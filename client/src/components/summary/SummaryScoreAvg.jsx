import React from 'react';
import styles from '../../styles/summary/SummaryScoreAvg.css';

const SummaryScoreAvg = (props) => (
  <div className={styles.summaryscoreavg}>
    <div className={styles.summaryscoreavgnum}>{props.score}</div>
    <div className={styles.summaryscoreavgcat}>{props.category}</div>
  </div>
);

export default SummaryScoreAvg;
