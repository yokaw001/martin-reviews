const router = require('express').Router();
const controller = require('./controller.js');

router
  .route('reviews/:restaurantid')
  .get(controller.reviews.get);

router
  .route('reviews/:restaurantid/:reviewfilters')

router
  .route('reviews/:restaurantid/:reviewsummary')


module.exports = router;
