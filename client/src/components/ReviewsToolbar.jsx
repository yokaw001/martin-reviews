import React from 'react';
import Filters from './Filters.jsx';
import SortByMenu from './SortByMenu.jsx';

const ReviewsToolbar = (props) => (
  <div id="reviewstoolbar">
    <SortByMenu
      sortDropdownOpen={props.sortDropdownOpen}
      selectedSortBy={props.selectedSortBy}
      updateSelectedSortBy={props.updateSelectedSortBy}
      toggleSortDropdown={props.toggleSortDropdown}
    />
    <Filters 
      reviewsFilters={props.reviewsSummary.reviewsFilters}
      toggleFilter={props.toggleFilter}
      selectedFilters={props.selectedFilters}
    />
  </div>
);

export default ReviewsToolbar;
