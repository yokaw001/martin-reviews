const db = require('./index.js');

module.exports = {
  getAllReviews: restaurantId => db.query(`
    SELECT* FROM reviews_detail WHERE restaurant_id = ${restaurantId};
  `),
  getReviewsSummary: restaurantId => db.query(`
    SELECT* FROM reviews_summary WHERE restaurant_id = ${restaurantId};
  `),
};
