'use strict';

const Plotly = require('plotly.js-dist');

const dateString = dat => [
  dat.getUTCFullYear(),
  (dat.getUTCMonth() + 1 + '').padStart(2, '0'),
  (dat.getUTCDate() + '').padStart(2, '0')
].join('-');

const parseLog = str => {
  const lines = str.split('\n');
  const stages = [
    'Canonicalizer',
    'LowerFIRRTLTypes',
    'LowerFIRRTLToRTLModule',
    'LowerFIRRTLToRTL',
    'AlwaysFusion',
    'CSE'
  ].reduce((res, stage) => {
    if (res[stage] === undefined) {
      res[stage] = 0;
    }
    lines
      .filter(line => line.match(stage))
      .map(line => {
        const m = line.match(/^.+\(.+\)\s*([0-9.]+)/);
        if (m) {
          const num = Number(m[1]);
          res[stage] += num;
        } else {
          console.log(line);
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

const findLogs = async (prefix) => {
  const now = new Date();
  const res = [];
  for (let i = 0; i < 10; i++) {
    const logName = prefix + '-' + dateString(now) + '.log';
    const resp = await fetch(logName);
    if (resp.status === 200) {
      const text = await resp.text();
      res.push({time: now.toDateString(), ...parseLog(text)});
    }
    now.setDate(now.getDate() - 1);
  }
  return res;
};

const extractTiming = logs => {
  const patoo = logs.reduce((pato, e) => {
    const time = e.time;
    const stages = e.stages;
    Object.keys(stages).map(traceName => {
      let patoTraceName = pato[traceName];
      if (patoTraceName === undefined) {
        pato[traceName] = patoTraceName = {x: [], y: [], stackgroup: 'one'};
      }
      patoTraceName.y.unshift(stages[traceName]);
      patoTraceName.x.unshift(time);
    });
    return pato;
  }, {});
  // console.log(patoo);
  const pats = Object.keys(patoo).map(key => ({name: key, ...patoo[key]}));
  // console.log(pats);
  return pats;
};

const extractMemory = logs => {
  const res = {x: [], y: []};
  // console.log(logs);
  logs.map(log => {
    if (log.maxMemory) {
      res.x.unshift(log.time);
      res.y.unshift(log.maxMemory);
    }
  });
  return [res];
};

global.perf = async divName => {
  const logs1 = await findLogs('test1');
  const plots = [0, 1].map(() => document.createElement('div'));
  Plotly.newPlot(plots[0], extractTiming(logs1), {
    title: 'test1, firtool, time',
    yaxis: {
      title: 'compile time [s]'
    }
  });
  Plotly.newPlot(plots[1], extractMemory(logs1), {
    title: 'test1, firtool, memory',
    yaxis: {
      title: 'memory [Bytes]',
      min: 0
    }
  });
  document.getElementById(divName).append(...plots);

};

/* eslint-env browser */
