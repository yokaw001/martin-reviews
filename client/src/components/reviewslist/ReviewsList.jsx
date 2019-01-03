import React, { Component } from 'react';
import Review from './Review.jsx';
import styles from '../../styles/reviewslist/ReviewsList.css';

const ReviewsList = (props) => (
  <div className={styles.reviewslist}>
    {props.selectedReviews()
      .filter((review, i) => {
        const minIndex = (props.currentReviewsPage - 1) * props.reviewsPerPage;
        const maxIndex = minIndex + props.reviewsPerPage - 1;
        return i >= minIndex && i <= maxIndex;
      })
      .map((review, i) => (
        <Review
          review={review}
          index={i}
          key={i}
        />
      )
    )}
  </div>
);

export default ReviewsList;
