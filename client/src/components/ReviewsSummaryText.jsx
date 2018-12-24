import React from 'react';

const ReviewsSummaryText = (props) => (
  <div id="reviewssummarytext">
    <div>Overall Ratings and Reviews</div>
    <div>Reviews can only be made by diners who have eaten at this restaurant</div>
    <div>{props.reviewsSummary.avg_overall} based on recent ratings</div>
    <div id="reviewssummaryscoreavgs"></div>
    <div id="reviewssummarynoise">Noise: Quiet</div>
    <div>{props.reviewsSummary.pct_recommend} would recommend it to a friend</div>
    <div>Best Restaurants in Downtown</div>
  </div>
);

export default ReviewsSummaryText;