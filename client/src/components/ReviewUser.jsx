import React from 'react';

const ReviewUser = (props) => (
  <div className="reviewuser">
    <div className="userinitials"><span>{props.userInitials}</span></div>
    <div className="username">{props.username}</div>
    <div className="usercity">{props.userCity}</div>
    <div className="userreviewcount">{props.reviewCount + ' reviews'}</div>
  </div>
);

export default ReviewUser;
