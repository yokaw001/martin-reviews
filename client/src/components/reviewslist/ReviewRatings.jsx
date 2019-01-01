import React from 'react';
import DateFns from 'date-fns';

const ReviewRatings = (props) => (
  <div className="reviewratings">
    <div className="reviewheader">
      <div className="reviewstars">
        <span className="reviewredstars">{`${("★ ").repeat(props.review.overall_score)}`}</span>
        <span className="reviewgreystars">{`${("★ ").repeat(5 - props.review.overall_score)}`}</span>
      </div>
      <div className="reviewdinedondate">
        <span>{`Dined on ${DateFns.format(props.review.dined_on_date, 'MMMM Do, YYYY')}`}</span>
      </div>
    </div>
    <div className="reviewscores">
      <span className="reviewscore">{`Overall  ${props.review.overall_score} · `}</span>
      <span className="reviewscore">{`Food  ${props.review.food_score} · `}</span>
      <span className="reviewscore">{`Service  ${props.review.service_score} · `}</span>
      <span className="reviewscore">{`Ambience  ${props.review.ambience_score}`}</span>
    </div>
  </div>
);

export default ReviewRatings;
