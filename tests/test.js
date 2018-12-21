const request = require('supertest');
const app = require('../server/app.js');

request(app)
  .get('/api/reviews/all/1')
  .expect('Content-Type', /json/)
  .expect(200)
  .end((err, res) => {
    if (err) throw err;
  });

request(app)
  .get('/api/reviews/summary/1')
  .expect('Content-Type', /json/)
  .expect(200)
  .end((err, res) => {
    if (err) throw err;
  });
