/* eslint-disable no-console */
const dbHelpers = require('../db/dbHelpers.js');

module.exports = {
  all: {
    get: (req, res) => {
      const { restaurantId } = req.params;
      dbHelpers.getAllReviews(restaurantId)
        .then((data) => { res.status(200).send(data[0]); })
        .catch((err) => { console.error(err); });
    },
    post: (req, res) => {
      const { newReview } = req.body;
      dbHelpers.addReview(newReview)
        .then(() => { res.status(200).send(); })
        .catch((err) => { console.error(err); });
    },
  },
  agg: {
    get: (req, res) => {
      const { restaurantId } = req.params;
      dbHelpers.getAggReviews(restaurantId)
        .then((data) => { res.status(200).send(data[0]); })
        .catch((err) => { console.error(err); });
    },
  },
};
