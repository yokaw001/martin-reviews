import React from 'react';

const ReviewsFilter = (props) => (
  <div className="filter">
    <div className="filtercheckbox"></div>
    <span>{props.filter}</span>
  </div>
);

export default ReviewsFilter;