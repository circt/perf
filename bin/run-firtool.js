#!/usr/bin/env node
'use strict';

const cp = require('child_process');
const { appendFile, writeFile } = require('fs/promises');
const { existsSync } = require('fs');

const pidusage = require('pidusage');

const dateString = require('../lib/date-string.js');

const firtoolExec = [
  // '../../llvm/circt/build/bin', // local development version
  'firtool'
].join('/');

const testPath = 'regress';

const tests = [
  // 'HwachaSequencer.lo',
  // 'RocketCore.lo',
  // 'FPU.lo',
  // 'Rob.lo',
  // 'test0',
  'test1'
];

const unpack = async name => {
  // unpack the file if it is compressed
  try {
    if (!existsSync(name)) {
      if (existsSync(name + '.xz')) {
        console.log('unpacking the file');
        const xz = await cp.spawn('xz', [
          '--decompress',
          '--keep',
          name + '.xz'
        ]);
        await new Promise(resolve => {
          xz.on('exit', resolve);
        });
      } else {
        console.error('Can not find test: ' + name);
      }
    }
  } catch (err) {
    console.error(err);
  }
};

const firtool = async name => {
  try {
    const t0 = Date.now();
    const firtool = await cp.spawn(firtoolExec, [
      (testPath + '/' + name + '.fir'),
      '--lower-to-rtl',
      '--enable-lower-types',
      '--pass-timing',
      '--verilog',
      '-o=' + (name + '.v')
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

    const logName = 'docs/' + name + '-' + dateString(new Date()) + '.log';

    for await (const log of firtool.stderr) {
      await writeFile(logName, log.toString());
    }

    for await (const log of firtool.stdout) {
      await writeFile(logName, log.toString());
    }

    await new Promise(resolve => {
      firtool.on('exit', resolve);
    });

    clearInterval(timer);

    await appendFile(logName, `
{
  totalTime: ${(Date.now() - t0) / 1000},
  maxMemory: ${maxs.memory}
}
`
    );
  } catch (err) {
    console.error(err);
  }
};

const main = async () => {
  for (let test of tests) {
    await unpack(testPath + '/' + test + '.fir');
    await firtool(test);
    // await verialtor(test);
  }
};

main();
