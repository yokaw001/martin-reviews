import React from 'react';

const ReviewFooter = () => (
  <div className="reviewfooter">
    <div className="readmore">+ Read More</div>
    <div className="reviewbtns">
      <div className="reportbtn">
        <img className="rpticon" src="https://s3-us-west-1.amazonaws.com/gitbuckets/tableit_report_icon.png"></img>
        Report
        </div>
      <div className="helpfulbtn">
        <img className="helpfulicon" src="https://s3-us-west-1.amazonaws.com/gitbuckets/tableit_helpful_icon_empty.png"></img>
        Helpful
      </div>
    </div>
  </div>
);

export default ReviewFooter;
