import React from 'react';

const ReviewScores = (props) => (
  <div className="reviewscores">
    <div>
      <span>{`Overall  ${props.overallScore} • `}</span>
      <span>{`Food  ${props.overallScore} • `}</span>
      <span>{`Service  ${props.overallScore} • `}</span>
      <span>{`Ambience  ${props.overallScore}`}</span>
    </div>
  </div>
);

export default ReviewScores;
