import React from 'react';

const SummaryBarChartRow = (props) => {
  const totalReviewsCount = props.reviews.length;
  const scoreReviewsCount = props.reviews.filter(review => (review.overall_score === props.score)).length;
  const scorePct = scoreReviewsCount / totalReviewsCount || 0;

  return (
    <div className="reviewssummarygraphrow" onClick={ () => {
      if (!props.selectedFilters.includes(`${props.score} Stars`)) {
        props.addOverallScoreFilter(`${props.score} Stars`);
      }
    }}>
      <span className="reviewssummarygraphrownum">{props.score}</span>
      <div className="reviewssummarygraphbar">
        <div className="reviewssummarygraphbarred" style={{width: `${100*scorePct}%`}}></div>
        <div className="reviewssummarygraphbarwhite" style={{width: `${100*(1 - scorePct)}%`}}></div>
      </div>
    </div>
  );
};

export default SummaryBarChartRow;
