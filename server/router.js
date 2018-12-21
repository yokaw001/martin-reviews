const router = require('express').Router();
const controller = require('./controller.js');

router
  .route('/reviews/all/:restaurantId')
  .get(controller.all.get);

router
  .route('/reviews/summary/:restaurantId')
  .get(controller.summary.get);

router
  .route('/reviews/filters/:restaurantId');

module.exports = router;
