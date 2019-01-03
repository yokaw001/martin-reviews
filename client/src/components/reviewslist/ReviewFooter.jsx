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
    <div className={styles.reviewfooter}>
      <div className={styles.reviewreadmore} onClick={this.props.toggleExpanded}>
        {this.props.overflow || this.props.expanded ? (this.props.expanded ? '- Read Less' : '+ Read More') : ''}
      </div>
      <div className={styles.reviewbtns}>
        <div className={styles.reviewreportbtn}>
          <img className={styles.reviewreporticon} src="https://s3-us-west-1.amazonaws.com/gitbuckets/hrla26-fec-tableit/tableit_report_icon.png"></img>
          <span>Report</span>
        </div>
        <div className={styles.reviewhelpfulbtn} onClick={ this.toggleHelpful }>
          <img className={styles.reviewhelpfulicon} src={this.state.helpful ?
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
