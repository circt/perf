'use strict';

const parseLog = str => {
  const lines = str.split('\n');
  const stages = [
    'Canonicalizer',
    'LowerFIRRTLTypes',
    'LowerFIRRTLToRTLModule',
    'LowerFIRRTLToRTL',
    'RTLMemSimImpl',
    'AlwaysFusion',
    'CSE',
    'RTLCleanup',
    'RTLLegalizeNames'
  ].reduce((res, stage) => {
    if (res[stage] === undefined) {
      res[stage] = 0;
    }
    lines
      .filter(line => line.match(stage))
      .map(line => {
        const m = line.match(/^.+\(.+\)\s*([0-9.]+)/); // two column
        if (m) {
          const num = Number(m[1]);
          res[stage] += num;
        } else {
          const m = line.match(/^\s+([0-9.]+)\s+\(.+\)/); // single column
          if (m) {
            const num = Number(m[1]);
            res[stage] += num;
          } else {
            console.log(line);
          }
        }
      });
    return res;
  }, {});

  lines.some(line => {
    const m = line.match(/totalTime: ([0-9.]+)/);
    if (m) {
      const known = Object.keys(stages).reduce((res, key) => res + stages[key], 0);
      stages.misc = Number(m[1]) - known;
      return true;
    }
  });

  let maxMemory;
  lines.some(line => {
    const m = line.match(/maxMemory: ([0-9.]+)/);
    if (m) {
      maxMemory = Number(m[1]);
      return true;
    }
  });

  return {stages, maxMemory};
};

module.exports = parseLog;
