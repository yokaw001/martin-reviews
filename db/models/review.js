const Sequelize = require('sequelize');
const connection = require('../index.js');

const Review = connection.define('review', {
  id: { type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true },
  restaurant_id: { type: Sequelize.INTEGER },
  user_id: { type: Sequelize.INTEGER },
  review_text: { type: Sequelize.TEXT },
  overall_score: { type: Sequelize.INTEGER },
  food_score: { type: Sequelize.INTEGER },
  service_score: { type: Sequelize.INTEGER },
  ambience_score: { type: Sequelize.INTEGER },
  dined_on_date: { type: Sequelize.DATE }
});

module.exports = Review;
