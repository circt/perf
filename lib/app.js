'use strict';

// const renderer = require('onml/renderer.js');

const Plotly = require('plotly.js-dist');

const dateString = dat => [
  dat.getFullYear(),
  (dat.getMonth() + 1 + '').padStart(2, '0'),
  (dat.getDate() + '').padStart(2, '0')
].join('-');

const parseLog = str => {
  const lines = str.split('\n');
  const patterns = [
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
        const m = line.match(/\s*([0-9.]+)/);
        const num = Number(m[1]);
        res[stage] += num;
      });
    return res;
  }, {});
  return patterns;
};

const findLogs = async () => {
  const now = new Date();
  const res = [];
  for (let i = 0; i < 10; i++) {
    const logName = 'test1-' + dateString(now) + '.log';
    const resp = await fetch(logName);
    if (resp.status === 200) {
      // console.log(resp);
      const text = await resp.text();
      // console.log(logName);
      // console.log(text);
      res.push({time: now.toDateString(), data: parseLog(text)});
    }
    now.setDate(now.getDate() - 1);
  }
  // console.log(res);
  const patoo = res.reduce((pato, e) => {
    const time = e.time;
    const data = e.data;
    Object.keys(data).map(traceName => {
      let patoTraceName = pato[traceName];
      if (patoTraceName === undefined) {
        pato[traceName] = patoTraceName = {x: [], y: [], stackgroup: 'one'};
      }
      patoTraceName.y.unshift(data[traceName]);
      patoTraceName.x.unshift(time);
    });
    return pato;
  }, {});
  console.log(patoo);
  const pats = Object.keys(patoo).map(key => ({name: key, ...patoo[key]}));
  console.log(pats);
  return pats;
};

global.perf = async divName => {
  Plotly.newPlot(divName, await findLogs(), {
    title: 'test1 perf',
    yaxis: {
      title: 'compile time [s]'
    }
  });
};

/* eslint-env browser */
