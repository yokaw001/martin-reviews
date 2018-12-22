import React from 'react';

const ReviewsToolbar = (props) => (
  <div id="reviewstoolbar">
    <div id="sortby">
      Sort by
      <select id="sortbyselect">
        <option>Newest</option>
        <option>Highest Rating</option>
        <option>Lowest Rating</option>
      </select>
    </div>
    <div id="filters">
      Filters
    </div>
  </div>
);

export default ReviewsToolbar;