import React from 'react';

const ReviewsPagesCarouselNumberButton = (props) => (
  <div 
    className={`pagenumberbutton ${props.pageNumber === props.currentReviewsPage ? "currentpagenumberbutton" : ""}`}
    onClick={ () => {props.updateReviewsPage(props.pageNumber);} }
  >
    {props.pageNumber}
  </div>
);

export default ReviewsPagesCarouselNumberButton;
