const Review = require('./models/Review.js');

module.exports = {
  getAllReviews: () => {
    return Review.findAll();
  },
  addReview: () => {

  },
};
