'use strict';

const Plotly = require('plotly.js-dist');
const parseLog = require('./parse-log.js');
const dateString = require('./date-string.js');

const findLogs = async (prefix) => {
  const now = new Date();
  const res = [];
  for (let i = 0; i < 30; i++) {
    const logName = prefix + '-' + dateString(now) + '.log';
    const resp = await fetch(logName);
    if (resp.status === 200) {
      const text = await resp.text();
      res.push({time: now.toDateString(), ...parseLog(text)});
    }
    now.setDate(now.getDate() - 1);
  }
  console.log(JSON.stringify(res, null, 2));
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
  document.getElementById(divName).append(...plots);
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

};

/* eslint-env browser */
