import React, { Component } from 'react';

class ReviewFooter extends Component {
  constructor(props) {
    super(props);
    this.state = {
      helpful: false,
    };
  }

  toggleHelpful = () => {
    this.setState({ helpful: !this.state.helpful });
  };

  render = () => (
    <div className="reviewfooter">
      <div className="readmore">+ Read More</div>
      <div className="reviewbtns">
        <div className="reportbtn">
          <img className="rpticon" src="https://s3-us-west-1.amazonaws.com/gitbuckets/hrla26-fec-tableit/tableit_report_icon.png"></img>
          <span>Report</span>
        </div>
        <div className="helpfulbtn" onClick={ this.toggleHelpful }>
          <img className="helpfulicon" src={this.state.helpful ?
            "https://s3-us-west-1.amazonaws.com/gitbuckets/hrla26-fec-tableit/tableit_helpful_icon_full.png" :
            "https://s3-us-west-1.amazonaws.com/gitbuckets/hrla26-fec-tableit/tableit_helpful_icon_empty.png"}
          ></img>
          <span>{this.state.helpful ? "Helpful (1)" : "Helpful"}</span>
        </div>
      </div>
    </div>
  );
}

export default ReviewFooter;
