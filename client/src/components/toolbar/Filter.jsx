import React from 'react';
import styles from '../../styles/toolbar/Filter.css';

const Filter = (props) => {
  const reviewCount = props.reviews.filter(review => (
    review.review_text.toLowerCase().includes(props.filter.toLowerCase())
  )).length;

  return (
    <div className={props.clicked ? styles.filter + ' ' + styles.filterclicked : styles.filter} onClick={ ()=>{props.toggleFilter(props.filter)} }>
      <img className={styles.filtercheckbox} src={props.clicked ? 
        "https://s3-us-west-1.amazonaws.com/gitbuckets/hrla26-fec-tableit/tableit_reviews_checkbox_full.png"
        : "https://s3-us-west-1.amazonaws.com/gitbuckets/hrla26-fec-tableit/tableit_reviews_checkbox_empty.png"}
      ></img>
      <span>{`${props.filter} ${props.filter.slice(1, 6) === ' Star' ? '' : `(${reviewCount})`}`}</span>
    </div>
  );
};

export default Filter;
