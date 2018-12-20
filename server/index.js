/* eslint-disable no-console */
const http = require('http');
const app = require('./app.js');

const server = http.createServer(app);
const PORT = process.env.PORT || 9001;

server.listen(PORT, () => { console.log('Listening on PORT: ', PORT); });
server.on('error', (err) => { console.error(err); });
