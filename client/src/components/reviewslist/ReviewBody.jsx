import React from 'react';
import ReviewRatings from './ReviewRatings.jsx';
import ReviewText from './ReviewText.jsx';
import ReviewFooter from './ReviewFooter.jsx';
import styles from '../../styles/reviewslist/ReviewBody.css';

const ReviewBody = (props) => (
  <div className={styles.reviewbody}>
    <ReviewRatings review={props.review} />
    <ReviewText reviewText={props.review.review_text} expanded={props.expanded} index={props.index} />
    <ReviewFooter toggleExpanded={props.toggleExpanded} overflow={props.overflow} expanded={props.expanded} />
  </div>
);

export default ReviewBody;
