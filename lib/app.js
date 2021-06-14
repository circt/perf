'use strict';

const Plotly = require('plotly.js-dist');
const parseLog = require('./parse-log.js');
const dateString = require('./date-string.js');

const appendElementArray = (root, tag, len) => {
  const arr = [];
  for (let i = 0; i < len; i++) {
    const el = document.createElement(tag);
    root.append(el);
    arr.push(el);
  }
  return arr;
};

const fetchLog = async (prefix, dateStr) => {
  const logName = prefix + '-' + dateStr + '.log';
  const resp = await fetch(logName);
  if (resp.status === 200) {
    const text = await resp.text();
    return {time: dateStr, ...parseLog(text)};
  }
};

const findLogs = async (prefix) => {
  const now = new Date();
  const promises = [];
  for (let i = 0; i < 60; i++) {
    promises.push(fetchLog(prefix, dateString(now)));
    now.setDate(now.getDate() - 1);
  }
  return await Promise.all(promises);
};

const extractTiming = logs => {
  const patoo = logs.reduce((pato, e) => {
    if (e === undefined) {
      return pato;
    }
    const time = e.time;
    const stages = e.stages;
    Object.keys(stages).map(traceName => {
      let patoTraceName = pato[traceName];
      if (patoTraceName === undefined) {
        pato[traceName] = patoTraceName = {x: [], y: [], stackgroup: 'one'};
        if (traceName === 'darkMatter') {
          patoTraceName.fillcolor = '#aaa';
          patoTraceName.line = {color: '#555'};
        }
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
    if (log === undefined) {
      return;
    }
    if (log.maxMemory) {
      res.x.unshift(log.time);
      res.y.unshift(log.maxMemory);
    }
  });
  return [res];
};

global.perf = async divName => {
  const now = new Date();
  const nowStr = dateString(now);
  now.setDate(now.getDate() - 14); // 2 week zoom
  const pastStr = dateString(now);

  const tests = [
    'test1',
    'test2',
    'test3',
    'chipyard.TestHarness.RocketSmall1Medium1Big1_BoomMedium1Large1Mega1.top.v.lo'
  ];

  const yRangoTime = {
    'test1': 5,
    'test2': 50
  };

  const root = document.getElementById(divName);
  const divs = appendElementArray(root, 'div', tests.length * 3);

  for (const [i, test] of tests.entries()) {
    const log = await findLogs(test);
    const timing = extractTiming(log);

    Plotly.newPlot(
      divs[2 * i],
      timing,
      {
        title: test + ', firtool, time stacked',
        height: 420,
        margin: {l: 40, r: 40, b: 32, t: 32, pad: 0},
        xaxis: {range: [pastStr, nowStr]},
        yaxis: {
          title: 'compile time [s]',
          nticks: 11,
          range: (test in yRangoTime) ? [0, yRangoTime[test]] : undefined
        }
      },
      {responsive: true}
    );

    Plotly.newPlot(
      divs[2 * i + 1],
      timing.map(e => ({name: e.name, x: e.x, y: e.y})),
      {
        title: test + ', firtool, time',
        height: 420,
        margin: {l: 40, r: 40, b: 32, t: 32, pad: 0},
        xaxis: {range: [pastStr, nowStr]},
        yaxis: {
          title: 'compile time [s]',
          nticks: 11,
          range: (test in yRangoTime) ? [0, yRangoTime[test]] : undefined
        }
      },
      {responsive: true}
    );

    Plotly.newPlot(
      divs[2 * tests.length + i],
      extractMemory(log),
      {
        title: test + ', firtool, memory',
        xaxis: {range: [pastStr, nowStr]},
        yaxis: {
          title: 'memory [Bytes]',
          min: 0,
          nticks: 11,
          exponentformat: 'SI'
        }
      },
      {responsive: true}
    );

  }
};

/* eslint-env browser */
