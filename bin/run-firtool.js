#!/usr/bin/env node
'use strict';

const cp = require('child_process');
const { appendFile, writeFile } = require('fs/promises');

const pidusage = require('pidusage');

const dateString = dat => [
  dat.getUTCFullYear(),
  (dat.getUTCMonth() + 1 + '').padStart(2, '0'),
  (dat.getUTCDate() + '').padStart(2, '0')
].join('-');

const firtoolExec = (
  // '../../llvm/circt/build/bin/' + // local development version
  'firtool'
);

const tests = [
  // 'regress/HwachaSequencer.lo',
  // 'regress/RocketCore.lo',
  // 'regress/FPU.lo',
  // 'regress/Rob.lo',
  // 'regress/test0',
  'test1'
];

const main = async () => {

  for (let test of tests) {
    try {
      const t0 = Date.now();
      const firtool = await cp.spawn(firtoolExec, [
        ('regress/' + test + '.fir'),
        '--lower-to-rtl',
        '--enable-lower-types',
        '--pass-timing',
        '--verilog',
        '-o=' + (test + '_new.v')
      ]);

      let timer, maxs = {memory: 0};
      const interval = async time => {
        timer = setTimeout(async () => {
          const stats = await pidusage(firtool.pid);
          Object.keys(maxs).map(key => {
            maxs[key] = Math.max(maxs[key], stats[key]);
          });
          interval(time);
        }, time);
      };
      interval(200);

      const logName = 'docs/' + test + '-' + dateString(new Date()) + '.log';

      for await (const log of firtool.stderr) {
        await writeFile(logName, log.toString());
      }

      for await (const log of firtool.stdout) {
        await writeFile(logName, log.toString());
      }

      firtool.on('exit', async () => {
        clearInterval(timer);
        await appendFile(logName, `
{
  totalTime: ${(Date.now() - t0) / 1000},
  maxMemory: ${maxs.memory}
}
`
        );
      });

    } catch (err) {
      console.error(err);
    }
  }
};

main();
