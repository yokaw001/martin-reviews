import React from 'react';
import Review from './Review.jsx';

const ReviewsList = (props) => (
  <div id="reviewslist">
    {props.selectedReviews.map((review, i) => (
      <Review review={review} key={i}/>
    ))}
  </div>
);

export default ReviewsList;
