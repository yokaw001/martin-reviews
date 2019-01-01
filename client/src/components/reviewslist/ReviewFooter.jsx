import React, { Component } from 'react';
import styles from '../../styles/reviewslist/ReviewFooter.css';

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
      <div className="reviewreadmore" onClick={this.props.toggleExpanded}>
        {this.props.overflow || this.props.expanded ? (this.props.expanded ? '- Read Less' : '+ Read More') : ''}
      </div>
      <div className="reviewbtns">
        <div className="reviewreportbtn">
          <img className="reviewreporticon" src="https://s3-us-west-1.amazonaws.com/gitbuckets/hrla26-fec-tableit/tableit_report_icon.png"></img>
          <span>Report</span>
        </div>
        <div className="reviewhelpfulbtn" onClick={ this.toggleHelpful }>
          <img className="reviewhelpfulicon" src={this.state.helpful ?
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
