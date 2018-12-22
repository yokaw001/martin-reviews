import React from 'react';
import Review from './Review.jsx';

const ReviewsList = (props) => (
  <div id="reviewslist">
    <ul>
      {props.reviews.map((review, i) => (
        <Review review={review} key={i}/>
      ))}
    </ul>
  </div>
);

export default ReviewsList;
