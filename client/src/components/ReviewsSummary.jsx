import React from 'react';
import ReviewsSummaryText from './ReviewsSummaryText.jsx';
import ReviewsSummaryGraph from './ReviewsSummaryGraph.jsx';
import LovedFor from './LovedFor.jsx';

const ReviewsSummary = (props) => (
  <div id="reviewssummary">
    <div id="reviewssummaryheader">
      What {props.reviewsSummary.total_reviews} People Are Saying
    </div>
    <div id="reviewssummarybody">
      <ReviewsSummaryText reviewsSummary={props.reviewsSummary} />
      <ReviewsSummaryGraph
        reviews={props.reviews}
        reviewsSummary={props.reviewsSummary}
        selectedFilters={props.selectedFilters}
        addOverallScoreFilter={props.addOverallScoreFilter}
        toggleFilter={props.toggleFilter}
      />
    </div>
    <LovedFor />
  </div>
);

export default ReviewsSummary;
