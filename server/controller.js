/* eslint-disable no-console */
const dbHelpers = require('../db/dbHelpers.js');

module.exports = {
  all: {
    get: (req, res) => {
      const { restaurantId } = req.params;
      dbHelpers.getAllReviews(restaurantId)
        .spread((data) => { res.status(200).send(data); })
        .catch((err) => { console.error(err); });
    },
    post: (req, res) => {
      const { newReview } = req.body;
      dbHelpers.addReview(newReview)
        .spread(() => { res.status(200).send(); })
        .catch((err) => { console.error(err); });
    },
  },
  summary: {
    get: (req, res) => {
      const { restaurantId } = req.params;
      dbHelpers.getReviewsSummary(restaurantId)
        .spread((data) => { res.status(200).send(data[0]); })
        .catch((err) => { console.error(err); });
    },
  },
};
