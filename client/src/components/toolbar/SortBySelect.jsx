import React from 'react';
import styles from '../../styles/toolbar/SortBySelect.css';

const SortBySelect = (props) => (
  <div id="sortbyselect" onClick={props.toggleSortDropdown}>
    <span>{props.selectedSortBy}</span>
    {props.sortDropdownOpen ?
    <img id="sortbyarrow" src="https://s3-us-west-1.amazonaws.com/gitbuckets/hrla26-fec-tableit/tableit_reviews_select_arrow_down.png"></img>
    : <img id="sortbyarrow" src="https://s3-us-west-1.amazonaws.com/gitbuckets/hrla26-fec-tableit/tableit_reviews_select_arrow_up.png"></img>}
  </div>
);

export default SortBySelect;
