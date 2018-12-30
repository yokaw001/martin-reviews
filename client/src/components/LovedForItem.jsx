import React from 'react';

const LovedForItem = (props) => (
  <div className="lovedforitem">
    <div className="lovedforiconcontainer">
      <img className="lovedforicon" src="https://s3-us-west-1.amazonaws.com/gitbuckets/hrla26-fec-tableit/tableit_loved_for_icon.png"></img>
    </div>
    <div className="lovedforitemtext">
      <div className="lovedforitemtextheader">{props.item}</div>
      <div className="lovedforitemtextcity">{props.city}</div>
    </div>
  </div>
);

export default LovedForItem;