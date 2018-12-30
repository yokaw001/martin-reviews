import React from 'react';

const SummaryScoreAvg = (props) => (
  <div className="summaryscoreavg">
    <div className="summaryscoreavgnum">{props.score}</div>
    <div className="summaryscoreavgcat">{props.category}</div>
  </div>
);

export default SummaryScoreAvg;
