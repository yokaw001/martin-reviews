import React from 'react';

const ReviewText = (props) => (
  <div id={`review${props.index}`} className={props.expanded ? "reviewtext reviewtextexpanded" : "reviewtext"}>
    {props.reviewText}
  </div>
);

export default ReviewText;
