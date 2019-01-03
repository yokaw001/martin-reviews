import React from 'react';
import styles from '../../styles/summary/LovedForItem.css';

const LovedForItem = (props) => (
  <div className={styles.lovedforitem}>
    <div className={styles.lovedforiconcontainer}>
      <img className={styles.lovedforicon} src="https://s3-us-west-1.amazonaws.com/gitbuckets/hrla26-fec-tableit/tableit_loved_for_icon.png"></img>
    </div>
    <div className={styles.lovedforitemtext}>
      <div className={styles.lovedforitemtextheader}>{props.item}</div>
      <div className={styles.lovedforitemtextcity}>{props.city}</div>
    </div>
  </div>
);

export default LovedForItem;
