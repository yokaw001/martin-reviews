import React from 'react';
import SummaryText from './SummaryText.jsx';
import SummaryBarChart from './SummaryBarChart.jsx';
import LovedFor from './LovedFor.jsx';
import styles from '../../styles/summary/Summary.css';

const Summary = (props) => (
  <div id="summary">
    <div id="summaryheader">
      What {props.reviewsSummary.total_reviews} People Are Saying
    </div>
    <div id="summarybody">
      <SummaryText reviewsSummary={props.reviewsSummary} />
      <SummaryBarChart
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

export default Summary;
