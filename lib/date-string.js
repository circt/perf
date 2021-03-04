'use strict';

const dateString = dat => [
  dat.getUTCFullYear(),
  (dat.getUTCMonth() + 1 + '').padStart(2, '0'),
  (dat.getUTCDate() + '').padStart(2, '0')
].join('-');

module.exports = dateString;
