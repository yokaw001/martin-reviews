const dateFns = require('date-fns');
const fs = require('fs');
const path = require('path');

const foods = ['burgers', 'burritos', 'nachos', 'tacos', 'breakfast sandwiches', 'garlic fries', 'carne asada fries', 'soups', 'pepperoni pizzas', 'cheeseburgers', 'kale salads', 'quinoa salads', 'potato salads', 'strawberry smoothies', 'milkshakes', 'fried chicken wings', 'roast chicken', 'shawarma', 'curry', 'garlic naan', 'wings'];
const adverbs = ['pretty', 'honestly', 'frankly', 'ridiculously', 'ludicrously', 'soooo', 'frking', 'effing', 'like insanely', '...', 'unbelievably', 'undeniably', 'just plain'];
const intros = ['We came here for dinner one night and', 'Stopped by for a bite...', 'Came here for my last birthday, and', 'Grabbed lunch here a while ago, and', 'Came on a weekday and'];
const posAdjectives = ['awesome', 'lit', 'delicious', 'good', 'great', 'amazing', 'life-affirming', 'life-changing', 'unstoppable', 'un-freaking-believable', 'underrated'];
const neutralAdjectives = ['decent', 'okay', 'whatever', 'nothing special', 'alright', 'pretty good', 'good, not great', 'meh'];
const negAdjectives = ['terrible', 'disgusting', 'bad', 'cringe-worthy', 'overrated'];
const posSentences = ['Omg it was so good.', 'Definitely going back', 'Going back ASAP!', 'Top ten in LA for sure.', 'Best I\'ve ever had.', 'Top five hands down.'];
const negSentences = ['Never going back!', 'Would NOT recommend', 'DO NOT GO HERE!', 'This place sucks!', 'I honestly can\'t believe this place is still in business', 'Overall terrible'];
const posHashtags = ['#lit', '#fire', '#tasty', '#la', '#worldclass', '#elite', '#ontopoftheworld', '#thisishowwedoit', '#cantstopwontstop', '#yeet', '#bitconneeeeect', '#money', '#cashmoney'];
const negHashtags = ['#overrated', '#nomegusta', ':(', '#neveragain', '#notgoingback', '#why'];

const getRandomElement = arr => (
  arr[Math.floor(Math.random() * arr.length)]
);

const getPositiveComment = () => {
  const intro = getRandomElement(intros);
  const food = getRandomElement(foods);
  const adverb = getRandomElement(adverbs);
  const adjective = getRandomElement(posAdjectives);
  const sentence = getRandomElement(posSentences);
  const hashtag = Math.random() < 0.2 ? getRandomElement(posHashtags) : '';
  return `${intro} the ${food} were ${adverb} ${adjective}! ${sentence} ${hashtag}`;
};

const getNegativeComment = () => {
  const intro = getRandomElement(intros);
  const food = getRandomElement(foods);
  const adverb = getRandomElement(adverbs);
  const adjective = getRandomElement(negAdjectives);
  const sentence = getRandomElement(negSentences);
  const hashtag = Math.random() < 0.2 ? getRandomElement(negHashtags) : '';
  return `${intro} the ${food} are ${adverb} ${adjective}! ${sentence} ${hashtag}`;
};

const getNeutralComment = () => {
  const intro = getRandomElement(intros);
  const food = getRandomElement(foods);
  const adjective = getRandomElement(neutralAdjectives);
  return `${intro} the ${food} are ${adjective}`;
};

const getRandomDate = () => {
  const start = new Date(2016, 0, 1);
  const now = new Date();
  return new Date(start.getTime() + Math.random() * (now.getTime() - start.getTime()))
};

const getInsertForReviewsDetail = () => {
  const restaurantId = Math.floor(Math.random() * 10) + 1;
  const userId = Math.floor(Math.random() * 25) + 1;
  const overallScore = Math.floor(Math.random() * 5) + 1;
  const foodScore = Math.max(Math.min(overallScore + Math.floor(Math.random() * 3) - 1, 5), 1);
  const serviceScore = Math.max(Math.min(overallScore + Math.floor(Math.random() * 3) - 1, 5), 1);
  const ambienceScore = Math.max(Math.min(overallScore + Math.floor(Math.random() * 3) - 1, 5), 1);
  const wouldRecommend = overallScore >= 3 ? 1 : 0;
  const dinedOnDate = `"${dateFns.format(getRandomDate(), 'YYYY-MM-DD')}"`;
  let reviewText;
  if (overallScore < 3) {
    reviewText = `"${getNegativeComment()}"`;
  } else if (overallScore === 3) {
    reviewText = `"${getNeutralComment()}"`;
  } else {
    reviewText = `"${getPositiveComment()}"`;
  }

  const sqlParams = [
    restaurantId,
    userId,
    overallScore,
    foodScore,
    serviceScore,
    ambienceScore,
    wouldRecommend,
    dinedOnDate,
    reviewText,
  ];

  return `INSERT INTO reviews_detail (restaurant_id, user_id, overall_score, food_score, service_score, ambience_score, would_recommend, dined_on_date, review_text) VALUES (${[...sqlParams].join(', ')});`;
};

let str = '';

for (let i = 0; i < 500; i += 1) {
  str += `${getInsertForReviewsDetail()}\n`;
}

fs.writeFile(path.join(__dirname, 'sqlInserts.txt'), str, (err) => {
  if (err) { console.error(err); }
});
