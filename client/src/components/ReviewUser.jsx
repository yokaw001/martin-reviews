import React from 'react';

const ReviewUser = (props) => (
  <div className="reviewuser">
    <div className="userinitials"><span>{props.userInitials}</span></div>
    <div className="username">{props.username}</div>
    <div className="usercity">{props.userCity}</div>
    <div className="userreviewcount">
      <img className="userreviewcounticon" src="https://s3-us-west-1.amazonaws.com/gitbuckets/hrla26-fec-tableit/tableit_review_user_comments_icon.png"></img>
      <span>{props.reviewCount + ' reviews'}</span>
    </div>
  </div>
);

export default ReviewUser;
