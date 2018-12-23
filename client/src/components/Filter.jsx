import React from 'react';

const Filter = (props) => (
  <div className={props.clicked ? "filter filterclicked" : "filter"} onClick={ ()=>{props.toggleFilter(props.index)} }>
    <img className="filtercheckbox" src={props.clicked ? 
      "https://s3-us-west-1.amazonaws.com/gitbuckets/tabliet_reviews_checkbox_full.png"
      : "https://s3-us-west-1.amazonaws.com/gitbuckets/tableit_reviews_checkbox_empty.png"}
    ></img>
    <span>{props.filter}</span>
  </div>
);

export default Filter;
