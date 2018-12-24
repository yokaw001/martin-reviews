import React from 'react';
import ReviewsSummaryText from './ReviewsSummaryText.jsx';
import ReviewsSummaryGraph from './ReviewsSummaryGraph.jsx';

const ReviewsSummary = (props) => (
  <div id="reviewssummary">
    <div id="reviewssummaryheader">
      What {props.reviewsSummary.total_reviews} People Are Saying
    </div>
    <div id="reviewssummarybody">
      <ReviewsSummaryText reviewsSummary={props.reviewsSummary} />
      <ReviewsSummaryGraph reviewsSummary={props.reviewsSummary} />
    </div>
  </div>
);

export default ReviewsSummary;
