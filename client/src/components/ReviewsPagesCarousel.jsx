import React from 'react';
import ReviewsPagesCarouselNumberButton from './ReviewsPagesCarouselNumberButton.jsx';
import ReviewsPagesCarouselDirectionButton from './ReviewsPagesCarouselDirectionButton.jsx';

const ReviewsPagesCarousel = (props) => {
  // if pageNumber = 1, 2, n - 1, or n
    // max number of pagenums displayed = 4,
  // else
    // max number of pagenums displayed = 5

  // e.g., if current pagenum = m, display: 1, m - 1, m, m + 1, n
  // include "..." between 1 and m - 1 AND/OR m + 1 and n if not consecutive numbers

  let pageNumbers = [1, 2, 3]; // hardcoded for now
  // pageNumbers.map (pageNumber => {reviewspagescarouselnumberbutton})
  // how to add "..." between numbers when needed?
  return (
    <div id="reviewspagecarousel">
      <ReviewsPagesCarouselDirectionButton
        direction="prev"
        updateReviewsPage={props.updateReviewsPage}
        currentReviewsPage={props.currentReviewsPage}
      />
      <div id="pagenumberbuttonslist">
        {pageNumbers.map((pageNumber, i) => (
          <ReviewsPagesCarouselNumberButton
            pageNumber={pageNumber}
            updateReviewsPage={props.updateReviewsPage}
          />
        ))}
      </div>
      <ReviewsPagesCarouselDirectionButton
        direction="next"
        updateReviewsPage={props.updateReviewsPage}
        currentReviewsPage={props.currentReviewsPage}
      />
    </div>
  );
};

export default ReviewsPagesCarousel
