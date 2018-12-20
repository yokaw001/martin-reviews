DROP DATABASE IF EXISTS tableit_reviews;

CREATE DATABASE tableit_reviews;

USE tableit_reviews;

/* ================================== restaurants ================================== */
CREATE TABLE restaurants (
  id INT AUTO_INCREMENT,
  restaurant_name VARCHAR(255),
  PRIMARY KEY(id)
);

INSERT INTO restaurants (restaurant_name) VALUES ("Bestia");
INSERT INTO restaurants (restaurant_name) VALUES ("Republique");
INSERT INTO restaurants (restaurant_name) VALUES ("Patina");
INSERT INTO restaurants (restaurant_name) VALUES ("Wolf and Crane");
INSERT INTO restaurants (restaurant_name) VALUES ("WurstKuche");
INSERT INTO restaurants (restaurant_name) VALUES ("Spitz");
INSERT INTO restaurants (restaurant_name) VALUES ("Marugame Monzo");
INSERT INTO restaurants (restaurant_name) VALUES ("Daikokuya");
INSERT INTO restaurants (restaurant_name) VALUES ("Red Wheelbarrow");
INSERT INTO restaurants (restaurant_name) VALUES ("Buffalo Wild Wings");

/* ================================== users  ================================== */
CREATE TABLE users (
  id INT AUTO_INCREMENT,
  username VARCHAR(255),
  user_city VARCHAR(255),
  PRIMARY KEY(id)
);

INSERT INTO users (username, user_city) VALUES ("gcobello0", "Santa Barbara");
INSERT INTO users (username, user_city) VALUES ("lbabington1", "Santa Barbara");
INSERT INTO users (username, user_city) VALUES ("mtimms2", "Houston");
INSERT INTO users (username, user_city) VALUES ("kmacrow3", "Houston");
INSERT INTO users (username, user_city) VALUES ("hleyborne4", "Austin");
INSERT INTO users (username, user_city) VALUES ("dmolfino5", "Austin");
INSERT INTO users (username, user_city) VALUES ("mchung6", "New Orleans");
INSERT INTO users (username, user_city) VALUES ("lchecci7", "New York");
INSERT INTO users (username, user_city) VALUES ("hcollishaw8", "New York");
INSERT INTO users (username, user_city) VALUES ("carlow9", "Chicago");
INSERT INTO users (username, user_city) VALUES ("vturmalla", "Chicago");
INSERT INTO users (username, user_city) VALUES ("vcotab",	"Chicago");
INSERT INTO users (username, user_city) VALUES ("mknottleyc",	"Los Angeles");
INSERT INTO users (username, user_city) VALUES ("rmacphaild",	"Los Angeles");
INSERT INTO users (username, user_city) VALUES ("khanname",	"Los Angeles");
INSERT INTO users (username, user_city) VALUES ("kdescoffierf",	"Los Angeles");
INSERT INTO users (username, user_city) VALUES ("msneesbyg",	"San Francisco");
INSERT INTO users (username, user_city) VALUES ("opeasegodh",	"San Francisco");
INSERT INTO users (username, user_city) VALUES ("kpinchingi", "San Francisco");
INSERT INTO users (username, user_city) VALUES ("wbartosikj", "San Francisco");
INSERT INTO users (username, user_city) VALUES ("lpeizerk", "San Francisco");
INSERT INTO users (username, user_city) VALUES ("hmurrelll",	"New York");
INSERT INTO users (username, user_city) VALUES ("abeinckenm", "San Diego");
INSERT INTO users (username, user_city) VALUES ("jfoxonn",	"San Diego");
INSERT INTO users (username, user_city) VALUES ("tsalliero",	"San Diego");

/* ================================== review_filters ================================== */
CREATE TABLE review_filters (
  id INT AUTO_INCREMENT,
  restaurant_id INT,
  review_filter VARCHAR(55),
  PRIMARY KEY(id)
);

INSERT INTO review_filters (restaurant_id, review_filter) VALUES (1, 'Burgers');
INSERT INTO review_filters (restaurant_id, review_filter) VALUES (1, 'Burritos');
INSERT INTO review_filters (restaurant_id, review_filter) VALUES (1, 'Pizza');
INSERT INTO review_filters (restaurant_id, review_filter) VALUES (1, 'Breakfast');
INSERT INTO review_filters (restaurant_id, review_filter) VALUES (1, 'Nachos');
INSERT INTO review_filters (restaurant_id, review_filter) VALUES (2, 'Burgers');
INSERT INTO review_filters (restaurant_id, review_filter) VALUES (2, 'Burritos');
INSERT INTO review_filters (restaurant_id, review_filter) VALUES (2, 'Pizza');
INSERT INTO review_filters (restaurant_id, review_filter) VALUES (2, 'Breakfast');
INSERT INTO review_filters (restaurant_id, review_filter) VALUES (2, 'Nachos');
INSERT INTO review_filters (restaurant_id, review_filter) VALUES (3, 'Burgers');
INSERT INTO review_filters (restaurant_id, review_filter) VALUES (3, 'Burritos');
INSERT INTO review_filters (restaurant_id, review_filter) VALUES (3, 'Pizza');
INSERT INTO review_filters (restaurant_id, review_filter) VALUES (3, 'Breakfast');
INSERT INTO review_filters (restaurant_id, review_filter) VALUES (3, 'Nachos');
INSERT INTO review_filters (restaurant_id, review_filter) VALUES (4, 'Burgers');
INSERT INTO review_filters (restaurant_id, review_filter) VALUES (4, 'Burritos');
INSERT INTO review_filters (restaurant_id, review_filter) VALUES (4, 'Pizza');
INSERT INTO review_filters (restaurant_id, review_filter) VALUES (4, 'Breakfast');
INSERT INTO review_filters (restaurant_id, review_filter) VALUES (4, 'Nachos');
INSERT INTO review_filters (restaurant_id, review_filter) VALUES (5, 'Burgers');
INSERT INTO review_filters (restaurant_id, review_filter) VALUES (5, 'Burritos');
INSERT INTO review_filters (restaurant_id, review_filter) VALUES (5, 'Pizza');
INSERT INTO review_filters (restaurant_id, review_filter) VALUES (5, 'Breakfast');
INSERT INTO review_filters (restaurant_id, review_filter) VALUES (5, 'Nachos');
INSERT INTO review_filters (restaurant_id, review_filter) VALUES (6, 'Burgers');
INSERT INTO review_filters (restaurant_id, review_filter) VALUES (6, 'Burritos');
INSERT INTO review_filters (restaurant_id, review_filter) VALUES (6, 'Pizza');
INSERT INTO review_filters (restaurant_id, review_filter) VALUES (6, 'Breakfast');
INSERT INTO review_filters (restaurant_id, review_filter) VALUES (6, 'Nachos');
INSERT INTO review_filters (restaurant_id, review_filter) VALUES (7, 'Burgers');
INSERT INTO review_filters (restaurant_id, review_filter) VALUES (7, 'Burritos');
INSERT INTO review_filters (restaurant_id, review_filter) VALUES (7, 'Pizza');
INSERT INTO review_filters (restaurant_id, review_filter) VALUES (7, 'Breakfast');
INSERT INTO review_filters (restaurant_id, review_filter) VALUES (7, 'Nachos');
INSERT INTO review_filters (restaurant_id, review_filter) VALUES (8, 'Burgers');
INSERT INTO review_filters (restaurant_id, review_filter) VALUES (8, 'Burritos');
INSERT INTO review_filters (restaurant_id, review_filter) VALUES (8, 'Pizza');
INSERT INTO review_filters (restaurant_id, review_filter) VALUES (8, 'Breakfast');
INSERT INTO review_filters (restaurant_id, review_filter) VALUES (8, 'Nachos');
INSERT INTO review_filters (restaurant_id, review_filter) VALUES (9, 'Burgers');
INSERT INTO review_filters (restaurant_id, review_filter) VALUES (9, 'Burritos');
INSERT INTO review_filters (restaurant_id, review_filter) VALUES (9, 'Pizza');
INSERT INTO review_filters (restaurant_id, review_filter) VALUES (9, 'Breakfast');
INSERT INTO review_filters (restaurant_id, review_filter) VALUES (9, 'Nachos');
INSERT INTO review_filters (restaurant_id, review_filter) VALUES (10, 'Burgers');
INSERT INTO review_filters (restaurant_id, review_filter) VALUES (10, 'Burritos');
INSERT INTO review_filters (restaurant_id, review_filter) VALUES (10, 'Pizza');
INSERT INTO review_filters (restaurant_id, review_filter) VALUES (10, 'Breakfast');
INSERT INTO review_filters (restaurant_id, review_filter) VALUES (10, 'Nachos');

/* ================================== reviews_detail ================================== */
CREATE TABLE reviews_detail (
  id INT AUTO_INCREMENT,
  restaurant_id INT,
  user_id INT,
  review_text TEXT,
  overall_score INT,
  food_score INT,
  service_score INT,
  ambience_score INT,
  would_recommend BOOLEAN,
  dined_on_date DATE,
  PRIMARY KEY(id)
);

INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (4, 18, 1, 1, 2, 3, 1, "2018-11-07", "Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (7, 5, 4, 2, 2, 4, 1, "2017-08-13", "In hac habitasse platea dictumst.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (1, 10, 3, 4, 1, 4, 1, "2017-12-21", "In hac habitasse platea dictumst.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (1, 19, 1, 1, 5, 4, 1, "2017-09-25", "Proin eu mi.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (8, 18, 3, 3, 3, 1, 0, "2017-08-24", "Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (1, 1, 3, 2, 4, 5, 0, "2017-10-31", "Pellentesque viverra pede ac diam.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (10, 21, 5, 5, 5, 1, 0, "2018-02-12", "Pellentesque at nulla.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (6, 19, 3, 1, 4, 4, 0, "2018-03-07", "Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (4, 22, 5, 2, 3, 1, 0, "2018-12-06", "Vivamus in felis eu sapien cursus vestibulum.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (2, 2, 1, 1, 5, 5, 1, "2018-01-18", "Vivamus tortor.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (4, 11, 5, 1, 3, 4, 0, "2017-10-31", "Nam dui.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (8, 13, 1, 3, 5, 5, 0, "2018-11-01", "Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (10, 9, 5, 3, 5, 2, 1, "2018-02-20", "Maecenas ut massa quis augue luctus tincidunt.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (9, 25, 3, 4, 4, 4, 0, "2018-09-14", "Aliquam erat volutpat.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (8, 16, 2, 2, 2, 4, 0, "2018-09-07", "In hac habitasse platea dictumst.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (10, 21, 3, 3, 1, 2, 1, "2018-09-11", "Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (4, 10, 1, 2, 3, 5, 1, "2018-09-01", "Donec ut dolor.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (8, 22, 4, 2, 3, 2, 1, "2017-11-18", "Nam dui.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (5, 4, 1, 4, 1, 1, 0, "2017-07-18", "Etiam faucibus cursus urna.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (3, 21, 5, 5, 2, 3, 1, "2016-12-31", "Duis at velit eu est congue elementum.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (9, 2, 4, 1, 4, 5, 1, "2018-04-14", "Mauris sit amet eros.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (8, 8, 4, 3, 4, 3, 0, "2016-12-26", "Nulla suscipit ligula in lacus.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (10, 17, 1, 4, 5, 1, 0, "2018-09-30", "Integer a nibh.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (7, 9, 1, 2, 2, 1, 0, "2018-08-21", "Donec posuere metus vitae ipsum.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (3, 4, 5, 3, 2, 2, 0, "2017-11-18", "Donec vitae nisi.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (4, 15, 5, 5, 4, 2, 0, "2017-11-14", "Maecenas pulvinar lobortis est.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (3, 4, 1, 5, 4, 4, 1, "2017-01-09", "Quisque ut erat.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (2, 11, 1, 4, 4, 5, 0, "2018-11-29", "Nullam molestie nibh in lectus.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (5, 6, 1, 2, 4, 2, 0, "2018-07-09", "Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (4, 11, 2, 4, 3, 5, 0, "2018-04-08", "Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (10, 13, 2, 3, 2, 1, 1, "2018-06-17", "Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (1, 4, 4, 3, 3, 1, 1, "2018-12-04", "Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (8, 21, 3, 3, 4, 5, 0, "2018-06-13", "Ut at dolor quis odio consequat varius.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (6, 24, 5, 2, 4, 2, 1, "2017-11-19", "Nullam varius.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (9, 10, 3, 1, 1, 5, 0, "2017-04-26", "Suspendisse potenti.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (6, 19, 5, 5, 4, 2, 0, "2018-08-18", "Integer ac leo.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (1, 11, 2, 5, 4, 2, 1, "2018-09-09", "Integer ac neque.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (1, 11, 1, 3, 3, 4, 1, "2017-11-04", "Praesent id massa id nisl venenatis lacinia.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (4, 4, 5, 5, 2, 1, 1, "2017-08-13", "Maecenas pulvinar lobortis est.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (5, 12, 4, 2, 3, 3, 1, "2017-02-25", "Sed ante.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (8, 11, 5, 5, 2, 1, 1, "2018-02-22", "Etiam pretium iaculis justo.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (8, 8, 5, 3, 5, 4, 0, "2017-12-12", "Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (2, 24, 1, 4, 3, 3, 1, "2018-06-28", "Vivamus vestibulum sagittis sapien.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (2, 16, 2, 2, 3, 1, 1, "2018-01-04", "Pellentesque at nulla.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (7, 20, 5, 2, 4, 2, 0, "2017-07-05", "Proin at turpis a pede posuere nonummy.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (3, 16, 5, 2, 4, 5, 0, "2018-11-07", "Donec vitae nisi.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (7, 3, 5, 3, 1, 4, 1, "2018-01-20", "Integer ac leo.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (7, 6, 4, 3, 3, 2, 1, "2018-03-19", "Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (4, 7, 2, 4, 2, 1, 0, "2018-05-10", "Proin risus.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (2, 7, 3, 5, 5, 3, 1, "2018-11-23", "Etiam faucibus cursus urna.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (8, 6, 4, 5, 2, 3, 0, "2018-04-12", "Integer non velit.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (3, 7, 5, 1, 5, 4, 1, "2017-10-01", "Duis bibendum.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (4, 14, 1, 4, 2, 1, 0, "2017-01-15", "In hac habitasse platea dictumst.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (2, 8, 1, 2, 5, 4, 1, "2017-04-12", "Nulla justo.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (6, 16, 4, 3, 4, 1, 0, "2017-06-30", "Duis ac nibh.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (7, 4, 3, 5, 4, 3, 1, "2018-03-13", "Phasellus in felis.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (7, 25, 3, 1, 4, 1, 0, "2017-08-23", "Vestibulum ac est lacinia nisi venenatis tristique.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (1, 21, 1, 4, 3, 3, 0, "2017-08-19", "Praesent id massa id nisl venenatis lacinia.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (7, 18, 3, 2, 4, 2, 0, "2018-08-09", "Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (2, 17, 2, 2, 5, 2, 1, "2017-04-02", "Nunc purus.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (2, 14, 2, 3, 3, 4, 1, "2017-04-07", "Integer ac neque.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (9, 4, 4, 5, 1, 4, 0, "2018-05-19", "Sed accumsan felis.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (9, 17, 5, 4, 4, 5, 0, "2017-07-17", "Donec quis orci eget orci vehicula condimentum.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (8, 5, 2, 5, 1, 4, 0, "2018-11-20", "Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (8, 10, 1, 3, 2, 5, 0, "2017-01-31", "Cras pellentesque volutpat dui.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (2, 11, 4, 4, 3, 3, 1, "2016-12-25", "Pellentesque at nulla.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (6, 14, 5, 2, 4, 3, 1, "2018-07-20", "Integer non velit.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (8, 1, 3, 3, 1, 3, 0, "2018-10-09", "Donec quis orci eget orci vehicula condimentum.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (4, 13, 4, 5, 1, 3, 1, "2018-02-06", "Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (4, 22, 2, 2, 4, 2, 0, "2017-03-11", "Donec dapibus.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (1, 11, 2, 4, 1, 4, 1, "2018-09-02", "Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (8, 19, 3, 2, 1, 2, 1, "2017-08-26", "In hac habitasse platea dictumst.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (2, 16, 5, 2, 5, 3, 1, "2017-10-30", "Fusce consequat.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (2, 13, 2, 1, 5, 4, 0, "2018-12-05", "Vestibulum sed magna at nunc commodo placerat.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (9, 12, 2, 2, 2, 3, 0, "2018-08-30", "Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (7, 24, 1, 2, 5, 1, 0, "2017-07-18", "In est risus, auctor sed, tristique in, tempus sit amet, sem.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (1, 14, 3, 4, 5, 4, 0, "2018-03-02", "Morbi a ipsum.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (3, 25, 4, 1, 2, 3, 0, "2018-01-05", "Vivamus vel nulla eget eros elementum pellentesque.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (8, 10, 2, 3, 2, 3, 1, "2017-07-31", "Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (7, 23, 4, 5, 3, 2, 0, "2018-11-04", "Mauris lacinia sapien quis libero.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (2, 3, 1, 1, 2, 2, 1, "2017-05-07", "Ut tellus.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (7, 12, 4, 3, 5, 3, 1, "2017-06-19", "Quisque ut erat.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (10, 11, 3, 2, 2, 1, 0, "2016-12-23", "Mauris ullamcorper purus sit amet nulla.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (4, 12, 1, 2, 4, 1, 1, "2017-07-13", "Maecenas ut massa quis augue luctus tincidunt.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (2, 15, 3, 4, 4, 5, 1, "2017-04-04", "In eleifend quam a odio.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (4, 1, 5, 3, 2, 4, 0, "2017-04-16", "Praesent lectus.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (8, 12, 1, 1, 2, 3, 1, "2017-01-17", "Fusce posuere felis sed lacus.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (9, 19, 5, 5, 1, 1, 1, "2017-11-09", "Donec posuere metus vitae ipsum.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (10, 5, 3, 2, 3, 3, 1, "2018-08-30", "Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (3, 3, 4, 3, 1, 4, 1, "2018-07-01", "Donec ut dolor.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (2, 4, 2, 4, 3, 3, 0, "2018-06-10", "Etiam justo.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (4, 24, 4, 1, 1, 1, 0, "2018-09-26", "Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (1, 2, 2, 3, 3, 2, 1, "2017-01-25", "Curabitur convallis.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (8, 18, 3, 5, 5, 5, 1, "2018-11-12", "Nunc purus.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (4, 6, 2, 4, 2, 1, 1, "2017-11-04", "Fusce posuere felis sed lacus.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (8, 15, 1, 4, 1, 2, 0, "2018-11-28", "Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (3, 22, 4, 2, 2, 1, 1, "2018-01-19", "Duis mattis egestas metus.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (7, 10, 1, 2, 4, 4, 1, "2018-02-15", "Duis consequat dui nec nisi volutpat eleifend.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (10, 20, 2, 5, 5, 4, 1, "2018-07-10", "Phasellus id sapien in sapien iaculis congue.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (10, 24, 2, 1, 4, 2, 0, "2018-03-10", "Maecenas tincidunt lacus at velit.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (1, 12, 4, 5, 1, 3, 1, "2017-01-31", "Etiam vel augue.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (8, 10, 2, 2, 5, 2, 0, "2017-12-25", "Morbi vel lectus in quam fringilla rhoncus.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (10, 14, 2, 5, 4, 5, 0, "2018-06-29", "Morbi a ipsum.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (2, 9, 2, 4, 4, 4, 0, "2018-12-08", "Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (3, 20, 3, 3, 2, 2, 0, "2017-07-28", "Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (1, 3, 1, 3, 2, 5, 1, "2017-08-06", "Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (1, 17, 5, 5, 1, 1, 1, "2018-01-30", "Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (7, 23, 2, 5, 3, 5, 0, "2018-09-07", "Aliquam sit amet diam in magna bibendum imperdiet.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (9, 9, 5, 4, 4, 5, 0, "2018-01-04", "Donec ut dolor.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (10, 16, 2, 1, 4, 4, 0, "2017-12-24", "Suspendisse ornare consequat lectus.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (1, 18, 4, 1, 5, 5, 1, "2018-05-23", "Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (4, 21, 3, 5, 1, 3, 1, "2017-04-28", "Fusce posuere felis sed lacus.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (1, 1, 5, 3, 1, 1, 1, "2017-08-30", "Aenean sit amet justo.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (6, 1, 3, 4, 2, 5, 0, "2018-07-11", "Pellentesque at nulla.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (3, 19, 2, 1, 1, 3, 0, "2017-06-27", "Donec posuere metus vitae ipsum.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (9, 3, 1, 4, 1, 3, 0, "2017-09-04", "Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (10, 21, 2, 3, 3, 1, 0, "2016-12-27", "Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (7, 25, 3, 3, 1, 3, 0, "2018-12-14", "Suspendisse potenti.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (1, 9, 2, 1, 3, 1, 1, "2018-05-13", "Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (1, 15, 4, 3, 3, 5, 1, "2018-02-09", "Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (9, 1, 2, 1, 1, 3, 1, "2017-07-19", "Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (10, 14, 3, 4, 4, 2, 1, "2017-09-08", "Aliquam erat volutpat.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (2, 8, 1, 2, 3, 3, 0, "2018-09-11", "In hac habitasse platea dictumst.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (6, 4, 4, 5, 4, 3, 1, "2017-06-02", "Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (9, 2, 4, 5, 1, 5, 0, "2018-05-12", "Donec quis orci eget orci vehicula condimentum.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (6, 14, 3, 2, 2, 3, 0, "2018-06-05", "Etiam justo.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (7, 21, 4, 1, 1, 3, 1, "2018-04-14", "Morbi ut odio.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (1, 6, 1, 2, 1, 2, 0, "2018-11-12", "Pellentesque eget nunc.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (2, 7, 5, 3, 1, 5, 0, "2017-04-08", "Nulla suscipit ligula in lacus.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (2, 15, 2, 4, 1, 5, 0, "2017-06-27", "Nam nulla.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (9, 6, 4, 2, 4, 2, 1, "2018-11-13", "Vestibulum sed magna at nunc commodo placerat.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (9, 20, 2, 5, 1, 4, 0, "2018-11-08", "Mauris sit amet eros.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (4, 12, 2, 3, 2, 1, 1, "2017-07-26", "Etiam vel augue.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (2, 2, 3, 2, 3, 4, 0, "2018-10-05", "Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (5, 22, 2, 4, 1, 5, 1, "2017-12-19", "In eleifend quam a odio.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (5, 7, 4, 2, 4, 3, 1, "2018-01-29", "Integer ac neque.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (5, 19, 2, 2, 1, 2, 1, "2017-05-29", "Quisque porta volutpat erat.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (4, 17, 5, 1, 4, 5, 0, "2017-08-09", "Mauris sit amet eros.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (7, 19, 2, 3, 2, 4, 0, "2017-03-21", "Suspendisse potenti.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (9, 2, 5, 5, 5, 1, 0, "2017-09-23", "Integer tincidunt ante vel ipsum.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (5, 13, 1, 4, 1, 1, 1, "2018-07-30", "Proin at turpis a pede posuere nonummy.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (2, 8, 1, 5, 1, 2, 0, "2018-01-19", "Pellentesque eget nunc.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (1, 19, 1, 4, 1, 1, 0, "2017-09-12", "Ut at dolor quis odio consequat varius.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (8, 14, 5, 1, 4, 1, 1, "2017-03-20", "Fusce posuere felis sed lacus.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (6, 22, 1, 1, 1, 3, 1, "2018-09-09", "Donec vitae nisi.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (7, 9, 4, 5, 4, 1, 1, "2018-06-13", "Mauris sit amet eros.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (1, 8, 2, 4, 3, 1, 1, "2018-09-21", "Donec posuere metus vitae ipsum.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (3, 13, 3, 1, 2, 3, 0, "2018-09-08", "Cras non velit nec nisi vulputate nonummy.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (2, 5, 5, 2, 3, 4, 0, "2017-08-11", "Duis aliquam convallis nunc.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (1, 24, 1, 2, 5, 1, 0, "2018-07-21", "Donec dapibus.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (1, 14, 3, 5, 4, 1, 1, "2018-07-04", "Sed sagittis.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (1, 2, 2, 5, 1, 2, 0, "2018-03-16", "Nam nulla.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (10, 4, 2, 4, 4, 4, 0, "2018-12-04", "Vestibulum quam sapien, varius ut, blandit non, interdum in, ante.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (9, 22, 2, 1, 4, 4, 1, "2017-02-25", "Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (9, 8, 4, 2, 4, 5, 0, "2018-05-20", "Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (7, 25, 1, 3, 5, 1, 1, "2017-01-01", "In congue.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (6, 18, 2, 4, 4, 2, 0, "2018-02-27", "Vestibulum sed magna at nunc commodo placerat.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (1, 3, 3, 5, 5, 4, 1, "2018-07-20", "Pellentesque eget nunc.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (3, 5, 3, 4, 4, 2, 0, "2018-08-15", "Morbi vel lectus in quam fringilla rhoncus.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (7, 25, 3, 1, 4, 4, 0, "2018-03-03", "Duis mattis egestas metus.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (7, 9, 5, 4, 3, 4, 0, "2017-05-06", "Etiam faucibus cursus urna.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (2, 19, 4, 1, 2, 5, 0, "2017-05-27", "Vestibulum ac est lacinia nisi venenatis tristique.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (4, 21, 4, 4, 3, 4, 0, "2018-11-26", "Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (7, 25, 4, 4, 2, 3, 1, "2018-05-09", "Aliquam sit amet diam in magna bibendum imperdiet.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (7, 16, 3, 4, 1, 1, 1, "2018-03-06", "Nulla tellus.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (9, 17, 3, 3, 3, 4, 0, "2017-09-28", "Pellentesque viverra pede ac diam.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (7, 9, 4, 5, 2, 1, 1, "2017-06-24", "Phasellus sit amet erat.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (3, 20, 1, 2, 1, 2, 0, "2018-02-18", "Duis aliquam convallis nunc.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (9, 8, 1, 3, 3, 4, 1, "2018-09-18", "Nunc purus.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (2, 22, 5, 1, 4, 1, 0, "2017-03-30", "Vestibulum sed magna at nunc commodo placerat.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (1, 23, 3, 3, 1, 1, 0, "2017-10-17", "Donec vitae nisi.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (5, 1, 3, 3, 5, 5, 1, "2018-03-02", "Proin interdum mauris non ligula pellentesque ultrices.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (8, 25, 3, 5, 5, 5, 1, "2018-04-02", "Donec quis orci eget orci vehicula condimentum.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (4, 13, 2, 4, 4, 3, 0, "2018-06-21", "Maecenas tincidunt lacus at velit.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (7, 23, 2, 2, 3, 5, 0, "2018-04-22", "Cras non velit nec nisi vulputate nonummy.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (9, 22, 5, 2, 4, 1, 1, "2017-09-13", "Aliquam erat volutpat.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (5, 13, 4, 5, 1, 5, 0, "2017-07-19", "Praesent lectus.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (7, 13, 1, 2, 1, 4, 1, "2017-04-07", "Pellentesque viverra pede ac diam.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (8, 1, 5, 1, 3, 2, 0, "2018-11-16", "Maecenas pulvinar lobortis est.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (6, 18, 5, 4, 1, 1, 1, "2018-05-27", "Proin at turpis a pede posuere nonummy.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (10, 25, 5, 1, 4, 1, 0, "2017-07-25", "In hac habitasse platea dictumst.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (1, 8, 4, 3, 3, 2, 1, "2017-05-18", "Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (5, 9, 3, 5, 2, 5, 0, "2018-11-28", "Pellentesque eget nunc.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (10, 22, 2, 1, 1, 5, 0, "2018-09-22", "Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (4, 16, 4, 3, 2, 1, 1, "2018-12-03", "Morbi ut odio.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (2, 9, 1, 3, 2, 3, 1, "2018-08-26", "Morbi non quam nec dui luctus rutrum.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (3, 7, 3, 5, 5, 4, 0, "2017-10-27", "Aenean sit amet justo.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (5, 6, 3, 3, 2, 3, 1, "2018-01-10", "Praesent blandit lacinia erat.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (10, 15, 1, 5, 2, 1, 0, "2017-12-22", "Nulla facilisi.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (9, 4, 3, 2, 1, 3, 0, "2018-03-30", "Sed ante.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (10, 16, 3, 4, 1, 5, 0, "2018-11-15", "Nullam sit amet turpis elementum ligula vehicula consequat.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (1, 3, 3, 4, 4, 2, 0, "2018-09-06", "In eleifend quam a odio.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (10, 10, 2, 4, 1, 5, 1, "2017-12-14", "Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (4, 8, 5, 1, 3, 1, 0, "2017-06-05", "Donec quis orci eget orci vehicula condimentum.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (8, 8, 5, 3, 1, 3, 1, "2018-05-01", "In hac habitasse platea dictumst.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (7, 8, 4, 5, 2, 1, 0, "2017-05-27", "In hac habitasse platea dictumst.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (2, 22, 1, 1, 2, 3, 0, "2017-06-06", "Fusce consequat.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (6, 13, 3, 4, 2, 4, 1, "2017-02-07", "Praesent id massa id nisl venenatis lacinia.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (10, 5, 4, 3, 5, 3, 1, "2017-04-08", "Morbi quis tortor id nulla ultrices aliquet.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (7, 2, 5, 3, 5, 5, 1, "2018-02-17", "Morbi vel lectus in quam fringilla rhoncus.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (5, 10, 1, 1, 4, 3, 0, "2018-08-27", "Aliquam sit amet diam in magna bibendum imperdiet.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (1, 10, 3, 5, 2, 2, 1, "2017-09-24", "In est risus, auctor sed, tristique in, tempus sit amet, sem.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (4, 16, 4, 4, 2, 1, 1, "2017-10-06", "Vivamus tortor.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (5, 4, 1, 4, 4, 1, 0, "2018-01-01", "Maecenas rhoncus aliquam lacus.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (8, 5, 4, 2, 1, 5, 1, "2018-10-13", "Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (3, 19, 3, 4, 5, 1, 0, "2018-06-05", "Maecenas pulvinar lobortis est.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (3, 8, 1, 4, 3, 2, 0, "2017-12-06", "Praesent id massa id nisl venenatis lacinia.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (10, 6, 5, 5, 1, 4, 0, "2017-11-05", "Praesent id massa id nisl venenatis lacinia.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (7, 9, 5, 4, 3, 5, 1, "2017-12-11", "Curabitur gravida nisi at nibh.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (4, 10, 3, 1, 1, 5, 1, "2018-01-02", "Proin at turpis a pede posuere nonummy.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (6, 17, 1, 5, 3, 3, 1, "2018-08-15", "Praesent blandit.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (4, 24, 1, 2, 4, 1, 0, "2017-04-28", "Aliquam erat volutpat.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (8, 3, 4, 3, 5, 2, 1, "2017-04-06", "Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (5, 20, 1, 2, 5, 4, 1, "2018-09-20", "Aliquam erat volutpat.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (10, 22, 3, 4, 4, 2, 0, "2018-02-07", "Praesent id massa id nisl venenatis lacinia.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (7, 24, 5, 2, 5, 5, 1, "2017-06-04", "Mauris sit amet eros.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (4, 2, 3, 5, 5, 4, 0, "2017-07-13", "Donec quis orci eget orci vehicula condimentum.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (6, 14, 1, 5, 5, 2, 0, "2018-05-15", "Pellentesque eget nunc.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (3, 25, 2, 4, 2, 1, 0, "2017-03-22", "Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (4, 12, 2, 2, 1, 3, 1, "2018-04-13", "Ut tellus.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (8, 17, 5, 3, 1, 2, 1, "2018-09-21", "Duis mattis egestas metus.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (2, 15, 3, 4, 5, 4, 1, "2018-07-28", "Nulla tellus.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (4, 17, 3, 2, 1, 5, 1, "2018-04-15", "In congue.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (1, 10, 5, 2, 4, 5, 0, "2018-04-22", "Vestibulum quam sapien, varius ut, blandit non, interdum in, ante.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (4, 11, 2, 3, 5, 1, 0, "2018-07-03", "Maecenas tincidunt lacus at velit.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (10, 9, 3, 2, 2, 2, 0, "2017-07-09", "Nam tristique tortor eu pede.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (9, 21, 5, 4, 4, 3, 0, "2017-06-15", "Nullam molestie nibh in lectus.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (6, 3, 1, 3, 5, 3, 0, "2017-07-14", "Nam tristique tortor eu pede.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (5, 17, 1, 3, 5, 2, 1, "2018-08-28", "Nunc purus.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (6, 6, 1, 1, 2, 5, 0, "2017-01-25", "Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (9, 13, 4, 1, 3, 2, 0, "2018-12-08", "Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (7, 7, 2, 5, 2, 3, 0, "2018-02-17", "Nulla nisl.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (4, 6, 5, 2, 1, 2, 0, "2018-01-29", "Nulla tellus.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (3, 10, 2, 1, 5, 4, 0, "2018-07-20", "Nam nulla.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (2, 6, 2, 3, 4, 3, 1, "2017-01-16", "Integer non velit.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (2, 11, 1, 2, 4, 1, 0, "2018-10-19", "Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (3, 9, 4, 1, 4, 5, 0, "2017-08-12", "Pellentesque viverra pede ac diam.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (3, 20, 2, 5, 3, 2, 1, "2017-07-03", "In eleifend quam a odio.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (5, 14, 1, 4, 4, 4, 0, "2017-04-30", "In hac habitasse platea dictumst.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (7, 1, 3, 5, 4, 4, 1, "2017-05-04", "Pellentesque ultrices mattis odio.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (9, 2, 3, 4, 5, 4, 1, "2018-10-29", "Cras in purus eu magna vulputate luctus.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (4, 25, 4, 1, 1, 2, 0, "2018-09-03", "Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (2, 25, 2, 2, 5, 1, 0, "2018-09-11", "Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (5, 25, 3, 2, 4, 3, 0, "2017-03-29", "Duis bibendum.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (10, 24, 1, 2, 2, 3, 1, "2017-08-16", "Aliquam quis turpis eget elit sodales scelerisque.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (6, 25, 5, 3, 2, 3, 0, "2018-08-01", "Proin eu mi.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (8, 10, 5, 5, 3, 4, 0, "2017-05-31", "Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (4, 15, 1, 5, 5, 2, 1, "2017-11-03", "Sed ante.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (2, 4, 1, 2, 4, 2, 1, "2018-03-18", "Donec ut dolor.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (3, 8, 2, 1, 3, 1, 0, "2017-10-15", "Morbi non lectus.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (1, 15, 4, 4, 4, 3, 0, "2017-07-29", "Suspendisse potenti.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (8, 8, 1, 4, 5, 3, 1, "2017-12-13", "Quisque id justo sit amet sapien dignissim vestibulum.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (10, 1, 1, 2, 3, 2, 1, "2017-09-07", "Aenean fermentum.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (4, 13, 4, 2, 1, 2, 1, "2018-08-24", "Nullam porttitor lacus at turpis.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (1, 18, 4, 2, 5, 2, 1, "2018-11-01", "Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (5, 18, 4, 1, 1, 4, 0, "2017-03-19", "Nulla facilisi.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (7, 17, 5, 4, 5, 3, 0, "2017-12-09", "Aliquam non mauris.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (1, 19, 4, 5, 2, 4, 1, "2017-07-15", "Etiam justo.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (3, 13, 4, 3, 5, 2, 0, "2017-10-25", "In blandit ultrices enim.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (9, 18, 3, 4, 2, 4, 0, "2018-07-05", "Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (6, 20, 5, 1, 3, 3, 1, "2018-11-15", "Vivamus in felis eu sapien cursus vestibulum.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (7, 2, 5, 5, 1, 5, 0, "2018-07-09", "In hac habitasse platea dictumst.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (5, 3, 4, 5, 1, 2, 1, "2018-10-07", "Nam nulla.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (7, 21, 5, 4, 5, 5, 0, "2017-02-02", "Praesent lectus.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (5, 16, 5, 5, 5, 5, 0, "2017-07-29", "Ut tellus.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (2, 15, 1, 1, 4, 1, 0, "2017-03-21", "Proin risus.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (8, 23, 5, 3, 4, 5, 1, "2017-01-20", "Integer non velit.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (7, 23, 2, 5, 3, 2, 0, "2018-02-17", "In hac habitasse platea dictumst.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (1, 6, 5, 4, 5, 5, 1, "2017-03-20", "Maecenas ut massa quis augue luctus tincidunt.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (5, 24, 3, 3, 3, 2, 1, "2018-08-19", "Aliquam quis turpis eget elit sodales scelerisque.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (5, 13, 1, 4, 3, 2, 0, "2018-08-11", "Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (2, 21, 3, 2, 5, 2, 1, "2018-03-26", "Vivamus vestibulum sagittis sapien.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (5, 24, 4, 4, 5, 5, 1, "2018-06-06", "Lorem ipsum dolor sit amet, consectetuer adipiscing elit.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (9, 1, 3, 2, 4, 2, 0, "2018-10-13", "Morbi non quam nec dui luctus rutrum.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (3, 23, 3, 4, 5, 3, 0, "2018-02-11", "Donec ut dolor.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (6, 6, 3, 3, 2, 2, 1, "2018-03-21", "Nulla tellus.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (10, 1, 4, 5, 4, 1, 0, "2018-06-08", "Donec vitae nisi.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (4, 13, 3, 2, 5, 5, 0, "2018-10-06", "Maecenas tincidunt lacus at velit.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (6, 25, 1, 5, 2, 4, 0, "2017-11-24", "Sed vel enim sit amet nunc viverra dapibus.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (8, 13, 5, 3, 1, 3, 0, "2017-04-04", "In hac habitasse platea dictumst.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (10, 14, 5, 1, 2, 5, 0, "2017-06-24", "Donec quis orci eget orci vehicula condimentum.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (9, 16, 5, 2, 4, 2, 1, "2018-11-08", "Sed ante.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (5, 7, 3, 4, 2, 2, 1, "2017-01-10", "Integer ac leo.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (1, 6, 4, 4, 5, 2, 0, "2017-09-19", "Phasellus sit amet erat.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (9, 4, 1, 4, 5, 4, 1, "2017-10-05", "Morbi ut odio.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (7, 2, 1, 2, 4, 3, 1, "2018-02-10", "Pellentesque viverra pede ac diam.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (10, 20, 5, 2, 1, 3, 0, "2017-03-05", "Morbi non quam nec dui luctus rutrum.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (7, 24, 1, 5, 3, 4, 0, "2018-11-20", "Vivamus vestibulum sagittis sapien.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (10, 9, 2, 2, 4, 2, 1, "2018-06-25", "Etiam pretium iaculis justo.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (7, 7, 2, 2, 3, 4, 1, "2017-12-26", "Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (6, 18, 5, 5, 1, 2, 0, "2017-11-29", "Nulla ut erat id mauris vulputate elementum.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (9, 20, 5, 5, 4, 1, 1, "2018-10-30", "Donec semper sapien a libero.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (4, 7, 1, 3, 1, 1, 1, "2017-07-11", "Proin eu mi.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (8, 13, 3, 4, 4, 4, 1, "2017-09-20", "Phasellus sit amet erat.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (6, 25, 2, 2, 5, 3, 0, "2017-05-13", "Maecenas pulvinar lobortis est.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (1, 20, 4, 5, 5, 2, 0, "2017-01-15", "In est risus, auctor sed, tristique in, tempus sit amet, sem.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (1, 3, 3, 4, 2, 4, 0, "2018-05-19", "Praesent id massa id nisl venenatis lacinia.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (10, 21, 1, 1, 2, 1, 1, "2018-10-29", "Pellentesque eget nunc.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (7, 14, 2, 4, 2, 4, 1, "2018-02-10", "Morbi a ipsum.");
INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (10, 14, 1, 3, 1, 1, 0, "2016-12-21", "Maecenas tincidunt lacus at velit.");

/* ================================== reviews_agg ================================== */
CREATE VIEW reviews_agg AS 
SELECT
  restaurant_id,
  COUNT(*) total_reviews,
  CAST(AVG(overall_score) AS DECIMAL(2,1)) avg_overall,
  CAST(AVG(food_score) AS DECIMAL(2,1)) avg_food,
  CAST(AVG(service_score) AS DECIMAL(2,1)) avg_service,
  CAST(AVG(ambience_score) AS DECIMAL(2,1)) avg_ambience,
  SUM(would_recommend) / COUNT(*) pct_recommend,
  'Burgers' review_filter_1,
  'Burritos' review_filter_2,
  'Pizza' review_filter_3,
  'Breakfast' review_filter_4,
  'Nachos' review_filter_5,
  'Sauces' loved_for_1,
  'Wine' loved_for_2,
  'Moderate' noise_level
FROM reviews_detail
GROUP BY 1;
