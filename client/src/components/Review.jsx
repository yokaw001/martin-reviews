import React from 'react';
import ReviewUser from './ReviewUser.jsx';

const Review = (props) => (
  <div>
    {props.review.review_text}
    {/* <ReviewUser username={props.review.username} city={props.review.user} */}
  </div>
);

export default Review;
