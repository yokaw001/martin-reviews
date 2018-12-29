import React from 'react';
import Review from './Review.jsx';

const ReviewsList = (props) => {
  let reviews = [...props.reviews];
  let selectedFilters = props.selectedFilters.map(filter => (
    filter.toLowerCase()
  ));

  let selectedReviews = reviews.filter(review => (
    selectedFilters.every(selectedFilter => (
      selectedFilter.slice(1, 6) === ' star' ?
      review.overall_score === parseInt(selectedFilter[0]) :
      review.review_text.toLowerCase().includes(selectedFilter)
    ))
  ));

  return (
    <div id="reviewslist">
      {selectedReviews
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
};

export default ReviewsList;
