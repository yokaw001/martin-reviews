import React from 'react';
import styles from '../../styles/pagescarousel/PagesCarouselNumberButton.css';

const ReviewsPagesCarouselNumberButton = (props) => (
  <div className={styles.pagenumberbuttoncontainer}>
    <div
      className={styles.pagenumberbutton + ' ' + (props.pageNumber === props.currentReviewsPage ? styles.currentpagenumberbutton : '')}
      onClick={ () => {props.updateReviewsPage(props.pageNumber);} }
    >
      {props.pageNumber}
    </div>
  </div>
);

export default ReviewsPagesCarouselNumberButton;
