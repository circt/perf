'use strict';

const Plotly = require('plotly.js-dist');
const parseLog = require('./parse-log.js');
const dateString = require('./date-string.js');

const findLogs = async (prefix) => {
  const now = new Date();
  const res = [];
  for (let i = 0; i < 60; i++) {
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
  const tests = ['test1', 'test2'];
  const root = document.getElementById(divName);
  const logs = [];
  for (let test of tests) {
    logs.push(await findLogs(test));
  }
  tests.map((test, i) => {
    const data = extractTiming(logs[i]);
    const plot = document.createElement('div');
    root.append(plot);
    Plotly.newPlot(plot, data, {
      title: test + ', firtool, time',
      yaxis: {
        title: 'compile time [s]'
      }
    }, {responsive: true});
    const plot2 = document.createElement('div');
    root.append(plot2);
    Plotly.newPlot(plot2, data.map(function (entry) { return {name: entry.name, x: entry.x, y: entry.y}; }), {
      title: test + ', firtool, time',
      yaxis: {
        title: 'compile time [s]'
      }
    }, {responsive: true});
  });
  tests.map((test, i) => {
    const plot = document.createElement('div');
    root.append(plot);
    Plotly.newPlot(plot, extractMemory(logs[i]), {
      title: test + ', firtool, memory',
      yaxis: {
        title: 'memory [Bytes]',
        min: 0
      }
    }, {responsive: true});
  });
};

/* eslint-env browser */
