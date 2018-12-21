const mysql = require('mysql-promise');
const config = require('./config.js');

const db = mysql();

db.configure(config);

module.exports = db;
