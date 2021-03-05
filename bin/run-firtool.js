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
  'test1',
  'test2'
];

const count = (obj, key, delta) => {
  if (obj[key] === undefined) {
    obj[key] = 0;
  }
  obj[key] += delta;
};

const vlint = txt => {
  const errors = {};
  const warnings = {};
  txt.split('\n').map(line => {
    const m1 = line.match(/^%Error.+:.+:.+:\s*(.+)/);
    if (m1) {
      count(errors, m1[1], 1);
      return;
    }
    const m2 = line.match(/^%Warning-(\w+):/);
    if (m2) {
      count(warnings, m2[1], 1);
      return;
    }
  });
  return {errors, warnings};
};

const verialtor = async name => {
  console.log('  verilator');
  try {
    const child = await cp.spawn('verilator', [
      '--error-limit', '5000',
      '--lint-only',
      name + '.v'
    ]);

    let log = '';

    for await (const err of child.stderr) { log += err.toString(); }
    for await (const out of child.stdout) { log += out.toString(); }
    await new Promise(resolve => { child.on('exit', resolve); });

    const logName = 'docs/' + name + '-vlint-' + dateString(new Date()) + '.json';
    await writeFile(logName, JSON.stringify(vlint(log), null, 2));
  } catch (err) {
    console.log(err);
  }
};

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
    for await (const log of firtool.stderr) { await writeFile(logName, log.toString()); }
    for await (const log of firtool.stdout) { await writeFile(logName, log.toString()); }
    await new Promise(resolve => { firtool.on('exit', resolve); });

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
    console.log(test);
    await unpack(testPath + '/' + test + '.fir');
    await firtool(test);
    await verialtor(test);
  }
};

main();
