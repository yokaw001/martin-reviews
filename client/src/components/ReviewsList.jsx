import React from 'react';
import Review from './Review.jsx';

const ReviewsList = (props) => (
  <div id="reviewslist">
    {props.selectedReviews
      .filter((review, i) => {
        const minIndex = (props.currentReviewsPage - 1) * props.reviewsPerPage;
        const maxIndex = minIndex + props.reviewsPerPage - 1;
        return i >= minIndex && i <= maxIndex;
      })
      .map((review, i) => (
      <Review review={review} key={i}/>
      )
    )}
  </div>
);

export default ReviewsList;
