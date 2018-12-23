import React from 'react';
import Filter from './Filter.jsx';

const FiltersList = (props) => (
  <div id="filterslist">
    {props.reviewsFilters.map((filter, i) => (
      <Filter filter={filter} key={i} index={i} clicked={props.selectedFilters.includes(i)} toggleFilter={props.toggleFilter} />
    ))}
  </div>
);

export default FiltersList;