import React from 'react';
import Filters from './Filters.jsx';
import SortByMenu from './SortByMenu.jsx';
import styles from '../../styles/toolbar/Toolbar.css';

const Toolbar = (props) => (
  <div className={styles.toolbar}>
    <SortByMenu
      sortDropdownOpen={props.sortDropdownOpen}
      selectedSortBy={props.selectedSortBy}
      updateSelectedSortBy={props.updateSelectedSortBy}
      toggleSortDropdown={props.toggleSortDropdown}
    />
    <Filters
      reviews={props.reviews}
      reviewsFilters={props.reviewsSummary.reviewsFilters}
      toggleFilter={props.toggleFilter}
      selectedFilters={props.selectedFilters}
    />
  </div>
);

export default Toolbar;
