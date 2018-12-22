import React from 'react';
import ReviewsFiltersList from './ReviewsFiltersList.jsx';

const ReviewsToolbar = (props) => (
  <div id="reviewstoolbar">
    <div id="sortby">
      Sort by
      <div id="sortbyselect">
        <span>{props.currentSortBy}</span>
        <img id="sortbyarrow" src="https://s3-us-west-1.amazonaws.com/gitbuckets/tableit_reviews_select_arrow_down.png"></img>
      </div>
    </div>
    <div id="filters">
      Filters
      <ReviewsFiltersList reviewsFilters={props.reviewsSummary.reviewsFilters} />
    </div>
  </div>
);

export default ReviewsToolbar;
