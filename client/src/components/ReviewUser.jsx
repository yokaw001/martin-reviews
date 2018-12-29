import React from 'react';

const ReviewUser = (props) => {
  const colors = ['#df4e96', '#6c8ae4', '#d86441', '#bb6acd'];
  const randomColor = colors[(props.username.length % colors.length)];
  const randomDigit = parseInt(props.username.length.toString().split('').pop());

  return (
    <div className="reviewuser">
      {randomDigit < 3 ? <div className="vip"><span>VIP</span></div> : null}
      <div style={{'backgroundColor':randomColor}} className="userinitials">
        <span>{props.userInitials}</span>
      </div>
      <div className="username">{props.username}</div>
      <div className="usercity">{props.userCity}</div>
      <div className="userreviewcount">
        <img className="userreviewcounticon" src="https://s3-us-west-1.amazonaws.com/gitbuckets/hrla26-fec-tableit/tableit_review_user_comments_icon.png"></img>
        <span>{props.reviewCount + ' reviews'}</span>
      </div>
    </div>
  );
};

export default ReviewUser;
