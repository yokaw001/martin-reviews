import React from 'react';

const ReviewsSummaryText = (props) => {
  let overallScore = props.reviewsSummary.avg_overall;
  let overallScoreStars = [];
  
  while (overallScore > 0) {
    if (overallScore >= 1) {
      overallScoreStars.push(1);
      overallScore -= 1;
    } else {
      overallScoreStars.push(.5);
      overallScore -= 1;
    }
  }

  if (overallScoreStars.length < 5) {
    while (overallScoreStars.length < 5) {
      overallScoreStars.push(0);
    }
  }

  return (
    <div id="reviewssummarytext">
      <div id="reviewssummarysubheader" className="reviewssummarytextitem">Overall Ratings and Reviews</div>
      <div className="reviewssummarytextitem">Reviews can only be made by diners who have eaten at this restaurant</div>
      <div id="reviewssummaryrecentratings" className="reviewssummarytextitem">
        <div id="recentratingsstars">
          {overallScoreStars.map(star => {
            if (star === 1) {
              return (
                <img className="recentratingsstar" src="https://s3-us-west-1.amazonaws.com/gitbuckets/hrla26-fec-tableit/tableit_star_red.png"></img>
              );
            } else if (star === 0.5) {
              return (
                <img className="recentratingsstar" src="https://s3-us-west-1.amazonaws.com/gitbuckets/hrla26-fec-tableit/tableit_star_half.png"></img>
              );
            } else if (star === 0) {
              return (
                <img className="recentratingsstar" src="https://s3-us-west-1.amazonaws.com/gitbuckets/hrla26-fec-tableit/tableit_star_gray.png"></img>
              );
            }
          })}
        </div>
        <span>{props.reviewsSummary.avg_overall} based on recent ratings</span>
      </div>
      <div id="reviewssummaryscoreavgs" className="reviewssummarytextitem">
        <div id="reviewssummaryscoreavgs">
          <div className="reviewssummaryscoreavg">
            <div className="reviewssummaryscoreavgnum">{props.reviewsSummary.avg_food}</div>
            <div className="reviewssummaryscoreavgcat">Food</div>
          </div>
          <div className="reviewssummaryscoreavg">
            <div className="reviewssummaryscoreavgnum">{props.reviewsSummary.avg_service}</div>
            <div className="reviewssummaryscoreavgcat">Service</div>
          </div>
          <div className="reviewssummaryscoreavg">
            <div className="reviewssummaryscoreavgnum">{props.reviewsSummary.avg_ambience}</div>
            <div className="reviewssummaryscoreavgcat">Ambience</div>
          </div><div className="reviewssummaryscoreavg">
            <div className="reviewssummaryscoreavgnum">{props.reviewsSummary.avg_value}</div>
            <div className="reviewssummaryscoreavgcat">Value</div>
          </div> 
        </div>
      </div>
      <div id="reviewssummarynoise" className="reviewssummarytextitem">
        <img className="reviewssummaryimgsmall" src="https://s3-us-west-1.amazonaws.com/gitbuckets/hrla26-fec-tableit/tableit_noise_level.png"></img>
        <strong>Noise · </strong>&nbsp;Moderate
      </div>
      <div id="reviewssummarypctrecommend" className="reviewssummarytextitem">
        <img className="reviewssummaryimgsmall" src="https://s3-us-west-1.amazonaws.com/gitbuckets/hrla26-fec-tableit/tableit_recommend_thumb.png"></img>
        <strong>{parseInt(props.reviewsSummary.pct_recommend * 100) + '% of people '}</strong>&nbsp;would recommend it to a friend
      </div>
      <div className="reviewssummarytextitem">Best Restaurants in Downtown</div>
    </div>
  );
};

export default ReviewsSummaryText;
