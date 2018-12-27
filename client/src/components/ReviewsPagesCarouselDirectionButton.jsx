import React from 'react';

const ReviewsPagesCarouselDirectionButton = (props) => (
  <div className="pagedirectionbutton" onClick={ 
    () => {props.updateReviewsPage((props.direction === 'next' ? props.currentReviewsPage + 1 : props.currentReviewsPage - 1));
    }
  }>
    {props.direction === 'next' ? '>' : '<'}
  </div>
);

export default ReviewsPagesCarouselDirectionButton;
