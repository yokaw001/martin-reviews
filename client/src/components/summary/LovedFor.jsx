import React, { Component } from 'react';
import LovedForItem from './LovedForItem.jsx';
import helpers from '../../lib/helpers.js';

class LovedFor extends Component {
  constructor(props) {
    super(props);
    const lovedForItems = helpers.getLovedForItemsList();
    this.state = {
      overflow: false,
      expanded: false,
      lovedForItems,
    };
  };

  componentDidMount = () => {
    const overflow = this.hasOverflow();
    if (overflow !== this.state.overflow) { this.setState({ overflow }); }
  };

  componentDidUpdate = () => {
    const overflow = this.hasOverflow();
    if (overflow !== this.state.overflow) { this.setState({ overflow }); }
  };

  hasOverflow = () => {
    const element = document.getElementById('lovedforitemslist');
    return element.scrollHeight > element.clientHeight;
  };

  render = () => (
    <div id="lovedfor" className="reviewssummarytextitem">
      <div id="lovedforheader">
        Loved For
        <img id="info" src="https://s3-us-west-1.amazonaws.com/gitbuckets/hrla26-fec-tableit/tableit_reviews_summary_info_icon.png"></img>
      </div>
      <div id="lovedforitemslist">
        {this.state.lovedForItems.map((a, i) => (
          <LovedForItem item={a.item} city={a.city} key={i} />
        ))}
        {/* {(this.state.overflow && !this.state.expanded) ? 
          <div className="lovedforexpandbtn">{"+ 4 More"}</div> :
          null
        } */}
      </div>
      <div id="bestrestaurantscontainer" className="reviewssummarytextitem">
        <span id="bestrestaurants">Best Restaurants in Downtown ›</span>
      </div>
    </div>
  );
}

export default LovedFor;
