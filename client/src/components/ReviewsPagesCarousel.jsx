import React from 'react';
import _ from 'underscore';
import ReviewsPagesCarouselNumberButton from './ReviewsPagesCarouselNumberButton.jsx';
import ReviewsPagesCarouselDirectionButton from './ReviewsPagesCarouselDirectionButton.jsx';

const ReviewsPagesCarousel = (props) => {
  const totalPages = Math.ceil(props.selectedReviews.length / props.reviewsPerPage);
  let pageNumbers = [];
  pageNumbers.push(1, props.currentReviewsPage - 1, props.currentReviewsPage, props.currentReviewsPage + 1, totalPages)
  pageNumbers = _.uniq(pageNumbers); // remove duplicates
  for (let i = 0; i < pageNumbers.length; i += 1) { // remove pagenumbers out of range
    if (pageNumbers[i] < 1 || pageNumbers[i] > totalPages) {
      pageNumbers.splice(i, 1);
    }
  }

  if ([1, 2].includes(props.currentReviewsPage)) {
    pageNumbers.splice(3, 1);
  } else if ([totalPages -1, totalPages].includes(props.currentReviewsPage)) {
    pageNumbers.splice(1, 1);
  }
  // if pageNumber = 1, 2, n - 1, or n
    // max number of pagenums displayed = 4
    // remove duplicates and pagenums out of range
  // else
    // max number of pagenums displayed = 5
    // remove duplicates and pagenums out of range
  // add "..." between 1 and m - 1 and/or m + 1 and n if not consecutive numbers

  // pageNumbers.map (pageNumber => {reviewspagescarouselnumberbutton})
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
