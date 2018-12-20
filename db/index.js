/* eslint-disable no-console */
const mysql = require('promise-mysql');
const { database, user, password, host } = require('./config.js');

const db = mysql.createConnection({
  host,
  user,
  password,
  database
});

db.connect((err) => {
  if (err) {
    console.error(err);
  } else {
    console.log('Connected to mysql');
  }
});

module.exports = db;
