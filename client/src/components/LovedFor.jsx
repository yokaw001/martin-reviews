import React from 'react';
import LovedForItem from './LovedForItem.jsx';

const LovedFor = (props) => (
  <div id="lovedfor" className="reviewssummarytextitem">
    <div id="lovedforheader">
      Loved For
      <img id="info" src="https://s3-us-west-1.amazonaws.com/gitbuckets/hrla26-fec-tableit/tableit_reviews_summary_info_icon.png"></img>
    </div>
    <div id="lovedforitemslist">
      <LovedForItem item="Best Service" city="Downtown / South and East LA" />
      <LovedForItem item="Notable Wine List" city="Downtown / South and East LA" />
      <LovedForItem item="Special Occasion" city="Downtown / South and East LA" />
      <LovedForItem item="Best Overall" city="Los Angeles" />
      <LovedForItem item="Best Value" city="Los Angeles" />
    </div>
    <div id="bestrestaurantscontainer" className="reviewssummarytextitem">
      <span id="bestrestaurants">Best Restaurants in Downtown ›</span>
    </div>
  </div>
);

export default LovedFor;