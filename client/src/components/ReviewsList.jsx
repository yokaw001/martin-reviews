import React from 'react';
import Review from './Review.jsx';

const ReviewsList = (props) => (
  <div>
    {props.reviews.map((review, i) => (
      <Review review={review} key={i}/>
    ))}
  </div>
);

export default ReviewsList;
