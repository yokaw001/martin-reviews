import React from 'react';
import SortBySelect from './SortBySelect.jsx';
import SortByDropdown from './SortByDropdown.jsx';
import styles from '../../styles/toolbar/SortByMenu.css';

const SortbyMenu = (props) => (
  <div className={styles.sortbymenu}>
    <div>Sort by</div>
    <SortBySelect 
      selectedSortBy={props.selectedSortBy}
      sortDropdownOpen={props.sortDropdownOpen}
      toggleSortDropdown={props.toggleSortDropdown}
    />
    {props.sortDropdownOpen ? 
    <SortByDropdown
      selectedSortBy={props.selectedSortBy}
      updateSelectedSortBy={props.updateSelectedSortBy}
    />
    : null}
  </div>
);

export default SortbyMenu;
