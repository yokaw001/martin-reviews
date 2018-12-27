import React from 'react';
import DateFns from 'date-fns';

const ReviewRatings = (props) => (
  <div className="reviewratings">
    <div className="reviewheader">
      <div className="stars">
        <span className="redstars">{`${("★ ").repeat(props.review.overall_score)}`}</span>
        <span className="greystars">{`${("★ ").repeat(5 - props.review.overall_score)}`}</span>
      </div>
      <div className="dinedondate">
        <span>{`Dined on ${DateFns.format(props.review.dined_on_date, 'MMMM Do, YYYY')}`}</span>
      </div>
    </div>
    <div className="reviewscores">
      <span className="score">{`Overall  ${props.review.overall_score} · `}</span>
      <span className="score">{`Food  ${props.review.food_score} · `}</span>
      <span className="score">{`Service  ${props.review.service_score} · `}</span>
      <span className="score">{`Ambience  ${props.review.ambience_score}`}</span>
    </div>
  </div>
);

export default ReviewRatings;