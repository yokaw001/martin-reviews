import React, { Component } from 'react';

const SortByDropdown = (props) => (
  <div id="sortbydropdown">
    <div className="sortbydropdownitem" onClick={() => props.updateSelectedSortBy('Newest')}>
      <div className={props.selectedSortBy === 'Newest' ? "dropdowncirclefull" : "dropdowncircleempty"}></div>
      <span>Newest</span>
    </div>
    <div className="sortbydropdownitem" onClick={() => props.updateSelectedSortBy('Highest Rating')}>
        <div className={props.selectedSortBy === 'Highest Rating' ? "dropdowncirclefull" : "dropdowncircleempty"}></div>
        <span>Highest Rating</span>
    </div>
    <div className="sortbydropdownitem" onClick={() => props.updateSelectedSortBy('Lowest Rating')}>
      <div className={props.selectedSortBy === 'Lowest Rating' ? "dropdowncirclefull" : "dropdowncircleempty"}></div>
      <span>Lowest Rating</span>
    </div>
  </div>
);

export default SortByDropdown;