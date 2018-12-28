import React from 'react';
import _ from 'underscore';
import ReviewsPagesCarouselNumberButton from './ReviewsPagesCarouselNumberButton.jsx';
import ReviewsPagesCarouselDirectionButton from './ReviewsPagesCarouselDirectionButton.jsx';
import ReviewsPagesCarouselEllipsis from './ReviewsPagesCarouselEllipsis.jsx';

const ReviewsPagesCarousel = (props) => {
  const totalPages = Math.ceil(props.selectedReviews.length / props.reviewsPerPage);
  let pageNumbers = [1, props.currentReviewsPage - 1, props.currentReviewsPage, props.currentReviewsPage + 1, totalPages];
  pageNumbers = _.uniq(pageNumbers); // remove duplicates
  pageNumbers = pageNumbers.filter(num => ( num >= 1 && num <= totalPages )); // remove pagenumbers out of range

  if (props.currentReviewsPage === 1 && !pageNumbers.includes(3)) { // if current page = 1, add page number 3
    pageNumbers.splice(2, 0, 3);
  } else if (props.currentReviewsPage === totalPages && !pageNumbers.includes(totalPages - 2)) { // if current page = n, add page # n - 2
    pageNumbers.splice(pageNumbers.length - 2, 0, totalPages - 2);
  }

  for (let i = 0; i < pageNumbers.length; i++) {
    if ((pageNumbers[i] !== '···') && (pageNumbers[i] !== pageNumbers[i + 1] - 1) && (i !== pageNumbers.length - 1)) {
      pageNumbers.splice(i + 1, 0, '···');
    }
  }

  return (
    <div id="reviewspagecarousel">
      <ReviewsPagesCarouselDirectionButton
        direction="prev"
        updateReviewsPage={props.updateReviewsPage}
        currentReviewsPage={props.currentReviewsPage}
      />
      <div id="pagenumberbuttonslist">
        {pageNumbers.map((pageNumber, i) => (
          pageNumber === '···' ? 
          <ReviewsPagesCarouselEllipsis /> :
          <ReviewsPagesCarouselNumberButton
            pageNumber={pageNumber}
            updateReviewsPage={props.updateReviewsPage}
            currentReviewsPage={props.currentReviewsPage}
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
