import React from 'react';
import ReviewRatings from './ReviewRatings.jsx';
import ReviewText from './ReviewText.jsx';
import ReviewFooter from './ReviewFooter.jsx';

const ReviewBody = (props) => (
  <div className="reviewbody">
    <ReviewRatings review={props.review} />
    <ReviewText reviewText={props.review.review_text} />
    <ReviewFooter />
  </div>
);

export default ReviewBody;
