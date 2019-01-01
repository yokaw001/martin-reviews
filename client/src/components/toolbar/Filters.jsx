import React from 'react';
import Filter from './Filter.jsx';
import styles from '../../styles/toolbar/Filters.css';

const Filters = (props) => (
  <div id="filters">
    Filters
    <div id="filterslist">
      {props.reviewsFilters.map((filter, i) => (
        <Filter
          reviews={props.reviews}
          filter={filter}
          key={i}
          index={i}
          clicked={props.selectedFilters.includes(filter)}
          toggleFilter={props.toggleFilter}
        />
      ))}
    </div>
  </div>
);

export default Filters;
