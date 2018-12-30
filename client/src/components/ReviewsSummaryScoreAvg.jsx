import React from 'react';

const ReviewsSummaryScoreAvg = (props) => (
  <div className="reviewssummaryscoreavg">
    <div className="reviewssummaryscoreavgnum">{props.score}</div>
    <div className="reviewssummaryscoreavgcat">{props.category}</div>
  </div>
);

export default ReviewsSummaryScoreAvg;
