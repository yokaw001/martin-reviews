import React from 'react';

const Filter = (props) => {
  const reviewCount = props.reviews.filter(review => (
    review.review_text.toLowerCase().includes(props.filter.toLowerCase())
  )).length;

  return (
    <div className={props.clicked ? "filter filterclicked" : "filter"} onClick={ ()=>{props.toggleFilter(props.filter)} }>
      <img className="filtercheckbox" src={props.clicked ? 
        "https://s3-us-west-1.amazonaws.com/gitbuckets/hrla26-fec-tableit/tableit_reviews_checkbox_full.png"
        : "https://s3-us-west-1.amazonaws.com/gitbuckets/hrla26-fec-tableit/tableit_reviews_checkbox_empty.png"}
      ></img>
      <span>{`${props.filter} (${reviewCount})`}</span>
    </div>
  );
};
export default Filter;
