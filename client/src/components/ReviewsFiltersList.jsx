import React from 'react';
import ReviewsFilter from './ReviewsFilter.jsx';

const ReviewsFiltersList = (props) => (
  <div id="filterslist">
    {props.reviewsFilters.map(filter => (
      <ReviewsFilter filter={filter}/>
    ))}
  </div>
);

export default ReviewsFiltersList;