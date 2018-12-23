import React from 'react';
import FiltersList from './FiltersList.jsx';

const ReviewsToolbar = (props) => (
  <div id="reviewstoolbar">
    <div id="sortby">
      Sort by
      <div id="sortbyselect">
        <span>{props.selectedSortBy}</span>
        <img id="sortbyarrow" src="https://s3-us-west-1.amazonaws.com/gitbuckets/tableit_reviews_select_arrow_down.png"></img>
      </div>
    </div>
    <div id="filters">
      Filters
      <FiltersList
        reviewsFilters={props.reviewsSummary.reviewsFilters}
        toggleFilter={props.toggleFilter}
        selectedFilters={props.selectedFilters}
      />
    </div>
  </div>
);

export default ReviewsToolbar;
