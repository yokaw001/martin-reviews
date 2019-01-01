import React from 'react';
import styles from '../../styles/reviewslist/ReviewText.css';

const ReviewText = (props) => (
  <div id={`review${props.index}`} className={props.expanded ? "reviewtext reviewtextexpanded" : "reviewtext"}>
    {props.reviewText}
  </div>
);

export default ReviewText;
