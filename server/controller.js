/* eslint-disable no-console */
const dbHelpers = require('../db/dbHelpers.js');

module.exports = {
  reviews: {
    get: (req, res) => {
      dbHelpers.getAllReviews()
        .then((data) => { res.status(200).send(data); })
        .catch((err) => { console.error(err); });
    },
    post: (req, res) => {
      dbHelpers.addReview()
        .then(() => { res.status(200).send(); })
        .catch((err) => { console.error(err); });
    },
    put: (req, res) => {
      res.status(200).send();
    },
    delete: (req, res) => {
      res.status(200).send();
    },
  },
};
