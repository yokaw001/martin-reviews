import React from 'react';
import ReviewRatings from './ReviewRatings.jsx';
import ReviewText from './ReviewText.jsx';
import ReviewButtons from './ReviewButtons.jsx';

const ReviewBody = (props) => (
  <div className="reviewbody">
    <ReviewRatings review={props.review} />
    <ReviewText reviewText={props.review.review_text} />
    <ReviewButtons />
  </div>
);

export default ReviewBody;
