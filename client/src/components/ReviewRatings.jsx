import React from 'react';
import ReviewScores from './ReviewScores.jsx';
import ReviewStars from './ReviewStars.jsx';

const ReviewRatings = (props) => (
  <div className="reviewratings">
    <ReviewStars starCounts={props.review.overallScore}/>
    <ReviewScores 
      overallScore={props.review.overall_score}
      foodScore={props.review.food_score}
      serviceScore={props.review.service_score}
      ambienceScore={props.review.ambience_score}
    />
  </div>
);

export default ReviewRatings;