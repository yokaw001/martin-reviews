import React from 'react';
import styles from '../../styles/summary/SummaryScoreAvg.css';

const SummaryScoreAvg = (props) => (
  <div className="summaryscoreavg">
    <div className="summaryscoreavgnum">{props.score}</div>
    <div className="summaryscoreavgcat">{props.category}</div>
  </div>
);

export default SummaryScoreAvg;
