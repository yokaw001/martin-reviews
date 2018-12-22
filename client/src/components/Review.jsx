import React from 'react';
import ReviewUser from './ReviewUser.jsx';
import ReviewBody from './ReviewBody.jsx';

const Review = (props) => (
  <div className="review">
    <ReviewUser
      username={props.review.username}
      userInitials={props.review.user_initials}
      userCity={props.review.user_city}
      reviewCount={props.review.user_total_reviews}
    />
    <ReviewBody review={props.review} />
  </div>
);

export default Review;
