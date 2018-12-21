const router = require('express').Router();
const controller = require('./controller.js');

router
  .route('/reviews/all/:restaurantId')
  .get(controller.all.get);

router
  .route('/reviews/agg/:restaurantId')
  .get(controller.agg.get);

router
  .route('/reviews/filters/:restaurantId');

module.exports = router;
