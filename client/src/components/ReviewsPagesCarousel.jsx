import React from 'react';

const ReviewsPagesCarousel = (props) => {
  const totalPages = Math.ceil(props.selectedReviews.length / props.reviewsPerPage);
  // if pageNumber = first, second, second-last, or last, max number of pagenums displayed = 4,
  // else, max number of pagenums displayed = 5
    // e.g., if current pagenum = m, display: 1, m - 1, m, m + 1, n
    // include "..." between 1 and m - 1 AND/OR m + 1 and n if not consecutive numbers
  
  return (
    <div id="reviewspagecarousel">
      Reviews Page Carousel
    </div>
  );
};

export default ReviewsPagesCarousel
