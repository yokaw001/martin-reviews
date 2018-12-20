/* eslint-disable no-console */
const Sequelize = require('sequelize');
const { database, username, password, host, dialect } = require('./config.js');

const connection = new Sequelize(database, username, password, { host, dialect });

connection
  .authenticate()
  .then(() => { console.log('Successfully connected to mysql'); })
  .catch((err) => { console.error(err); });

module.exports = connection;
