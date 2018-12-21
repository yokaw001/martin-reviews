import React from 'react';

const ReviewUser = (props) => (
  <div>
    <div>{props.username}</div>
    <div>{props.city}</div>
    <div>{props.reviewCount + ' reviews'}</div>
  </div>
);

export default ReviewUser;
