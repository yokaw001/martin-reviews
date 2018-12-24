import React from 'react';

const ReviewsSummaryText = (props) => (
  <div id="reviewssummarytext">
    <div className="reviewssummarytextitem" id="reviewssummarysubheader">Overall Ratings and Reviews</div>
    <div className="reviewssummarytextitem">Reviews can only be made by diners who have eaten at this restaurant</div>
    <div id="reviewssummaryrecentratings" className="reviewssummarytextitem">{props.reviewsSummary.avg_overall} based on recent ratings</div>
    <div id="reviewssummaryscoreavgs" className="reviewssummarytextitem"></div>
    <div id="reviewssummarynoise" className="reviewssummarytextitem"><span>Noise: </span>Quiet</div>
    <div className="reviewssummarytextitem">{parseInt(props.reviewsSummary.pct_recommend * 100) + '%'} of people would recommend it to a friend</div>
    <div className="reviewssummarytextitem">Best Restaurants in Downtown</div>
  </div>
);

export default ReviewsSummaryText;
