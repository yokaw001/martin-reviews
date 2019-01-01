import React from 'react';
import styles from '../../styles/pagescarousel/PagesCarouselNumberButton.css';

const ReviewsPagesCarouselNumberButton = (props) => (
  <div 
    className={`pagenumberbutton ${props.pageNumber === props.currentReviewsPage ? "currentpagenumberbutton" : ""}`}
    onClick={ () => {props.updateReviewsPage(props.pageNumber);} }
  >
    {props.pageNumber}
  </div>
);

export default ReviewsPagesCarouselNumberButton;
