import React from 'react';

const ReviewsSummaryText = (props) => (
  <div id="reviewssummarytext">
    <div id="reviewssummarysubheader" className="reviewssummarytextitem">Overall Ratings and Reviews</div>
    <div className="reviewssummarytextitem">Reviews can only be made by diners who have eaten at this restaurant</div>
    <div id="reviewssummaryrecentratings" className="reviewssummarytextitem">{props.reviewsSummary.avg_overall} based on recent ratings</div>
    <div id="reviewssummaryscoreavgs" className="reviewssummarytextitem">
      <div id="reviewssummaryscoreavgs">
        <div className="reviewssummaryscoreavg">
          <div className="reviewssummaryscoreavgnum">4.5</div>
          <div className="reviewssummaryscoreavgcat">Food</div>
        </div>
        <div className="reviewssummaryscoreavg">
          <div className="reviewssummaryscoreavgnum">4.5</div>
          <div className="reviewssummaryscoreavgcat">Service</div>
        </div>
        <div className="reviewssummaryscoreavg">
          <div className="reviewssummaryscoreavgnum">4.5</div>
          <div className="reviewssummaryscoreavgcat">Ambience</div>
        </div><div className="reviewssummaryscoreavg">
          <div className="reviewssummaryscoreavgnum">4.5</div>
          <div className="reviewssummaryscoreavgcat">Value</div>
        </div> 
      </div>
    </div>
    <div id="reviewssummarynoise" className="reviewssummarytextitem">
      <img className="reviewssummaryimgsmall" src="https://s3-us-west-1.amazonaws.com/gitbuckets/hrla26-fec-tableit/tableit_noise_level.png"></img>
      <strong>Noise:</strong>&nbsp;Moderate
    </div>
    <div id="reviewssummarypctrecommend" className="reviewssummarytextitem">
      <img className="reviewssummaryimgsmall" src="https://s3-us-west-1.amazonaws.com/gitbuckets/hrla26-fec-tableit/tableit_recommend_thumb.png"></img>
      <strong>{parseInt(props.reviewsSummary.pct_recommend * 100) + '% of people '}</strong>&nbsp;would recommend it to a friend
    </div>
    <div className="reviewssummarytextitem">Best Restaurants in Downtown</div>
  </div>
);

export default ReviewsSummaryText;
