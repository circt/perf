#!/usr/bin/env node
'use strict';

const cp = require('child_process');
const pidusage = require('pidusage');

// const firtoolExec = '../../llvm/circt/build/bin/firtool';
const firtoolExec = 'firtool';

const tests = ['test1'];

const main = async () => {

  for (let test of tests) {
    try {
      const t0 = Date.now();
      const firtool = await cp.spawn(firtoolExec, [
        (test + '.fir'),
        '--lower-to-rtl',
        '--enable-lower-types',
        '--pass-timing',
        '--verilog',
        '-o=' + (test + '.v')
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

      for await (const err of firtool.stderr) {
        console.log(err.toString());
      }

      for await (const out of firtool.stdout) {
        console.log(out.toString());
      }

      firtool.on('exit', () => {
        clearInterval(timer);
        console.log({
          totalTime: Date.now() - t0,
          maxMemory: maxs.memory
        });
      });

    } catch (err) {
      console.error(err);
    }
  }
};

main();

// -Xms1500m -Xmx1500m
