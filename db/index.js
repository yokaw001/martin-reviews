const Sequelize = require('sequelize');
const { database, username, password, host, dialect } = require('./config.js');

const connection = new Sequelize(database, username, password, { host, dialect });
