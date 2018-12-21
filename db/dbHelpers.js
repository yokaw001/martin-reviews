const db = require('./index.js');

module.exports = {
  getAllReviews: restaurantId => db.query(`
    SELECT* FROM reviews_detail WHERE restaurant_id = ${restaurantId};
  `),
  addReview: newReview => db.query(`
    INSERT INTO reviews_detail (
      SELECT

      );
  `),
  getAggReviews: restaurantId => db.query(`
    SELECT* FROM reviews_agg where restaurant_id = ${restaurantId};
  `),
};
