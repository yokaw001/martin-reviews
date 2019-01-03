import React, { Component } from 'react';
import LovedForItem from './LovedForItem.jsx';
import helpers from '../../lib/helpers.js';
import styles from '../../styles/summary/LovedFor.css';

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
    const element = document.getElementsByClassName(styles.lovedforitemslist);
    return element.scrollHeight > element.clientHeight;
  };

  render = () => (
    <div className={styles.lovedfor} className={styles.reviewssummarytextitem}>
      <div className={styles.lovedforheader}>
        Loved For
        <img className={styles.info} src="https://s3-us-west-1.amazonaws.com/gitbuckets/hrla26-fec-tableit/tableit_reviews_summary_info_icon.png"></img>
      </div>
      <div className={styles.lovedforitemslist}>
        {this.state.lovedForItems.map((a, i) => (
          <LovedForItem item={a.item} city={a.city} key={i} />
        ))}
      </div>
      <div className={styles.bestrestaurantscontainer + ' ' + styles.reviewssummarytextitem}>
        <span className={styles.bestrestaurants}>Best Restaurants in Downtown ›</span>
      </div>
    </div>
  );
}

export default LovedFor;
