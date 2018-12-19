DROP DATABASE IF EXISTS opentable_reviews;

CREATE DATABASE opentable_reviews;

USE opentable_reviews;

CREATE TABLE reviews_detail (
  id INT PRIMARY KEY,
  review_text TEXT,
  overall_score INT,
  food_score INT,
  service_score INT,
  ambience_score INT,
  restaurant_name VARCHAT(255),
  restaurant_id INT,
  user_name VARCHAR(255),
  user_city VARCHAR(255),
  user_total_reviews INT,
  dined_on_date DATE
);

CREATE TABLE reviews_agg (
  id INT PRIMARY KEY,
  total_reviews INT,
  avg_overall DECIMAL(2,1),
  avg_food DECIMAL(2,1),
  avg_service DECIMAL(2,1),
  avg_ambience DECIMAL(2,1),
  review_filter_1 VARCHAR(255),
  review_filter_2 VARCHAR(255),
  review_filter_3 VARCHAR(255),
  review_filter_4 VARCHAR(255),
  review_filter_5 VARCHAR(255),
  pct_recommend INT,
  loved_for_1 VARCHAR(255),
  loved_for_2 VARCHAR(255),
  noise_level VARCHAR(255)
);

