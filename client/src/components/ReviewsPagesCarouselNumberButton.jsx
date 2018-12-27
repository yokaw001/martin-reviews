import React from 'react';

const ReviewsPagesCarouselNumberButton = (props) => (
  <div className="pagenumberbutton" onClick={ () => {props.updateReviewsPage(props.pageNumber);} }>
    {props.pageNumber}
  </div>
);

export default ReviewsPagesCarouselNumberButton;
