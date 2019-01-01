import React, { Component } from 'react';
import LovedForItem from './LovedForItem.jsx';

class LovedFor extends Component {
  constructor(props) {
    super(props);
    this.state = {
      expanded: false,
    };
  };

  render = () => {
    const items = ['Best Service', 'Notable Wine List', 'Special Occasion', 'Best Overall', 'Best Value', 'Best Sushi', 'Japanese', 'Best Casual'];
    const cities = ['Downtown / South and East LA', 'Los Angeles', 'Torrance', 'East LA', 'West LA', 'South Bay'];
    const count = Math.floor(Math.random() * items.length) + 1;
    const lovedForItems = [];

    for (let i = 0; i < count; i += 1) {
      let itemIndex = Math.floor(Math.random() * items.length);
      let item = items.splice(itemIndex, 1)[0];
      let cityIndex = Math.floor(Math.random() * cities.length);
      let city = cities[cityIndex];
      lovedForItems.push({ item, city });
    }
  
    return (
      <div id="lovedfor" className="reviewssummarytextitem">
        <div id="lovedforheader">
          Loved For
          <img id="info" src="https://s3-us-west-1.amazonaws.com/gitbuckets/hrla26-fec-tableit/tableit_reviews_summary_info_icon.png"></img>
        </div>
        <div id="lovedforitemslist">
          {lovedForItems.map(a => (
            <LovedForItem item={a.item} city={a.city} />
          ))}
        </div>
        <div id="bestrestaurantscontainer" className="reviewssummarytextitem">
          <span id="bestrestaurants">Best Restaurants in Downtown ›</span>
        </div>
      </div>
    );
  };
}

// const LovedFor = (props) => {
//   const items = ['Best Service', 'Notable Wine List', 'Special Occasion', 'Best Overall', 'Best Value', 'Best Sushi', 'Japanese', 'Best Casual'];
//   const cities = ['Downtown / South and East LA', 'Los Angeles', 'Torrance', 'East LA', 'West LA', 'South Bay'];
//   const count = Math.floor(Math.random() * items.length) + 1;
//   const lovedForItems = [];
  
//   for (let i = 0; i < count; i += 1) {
//     let itemIndex = Math.floor(Math.random() * items.length);
//     let item = items.splice(itemIndex, 1)[0];
//     let cityIndex = Math.floor(Math.random() * cities.length);
//     let city = cities[cityIndex];
//     lovedForItems.push({ item, city });
//   }

//   return (
//     <div id="lovedfor" className="reviewssummarytextitem">
//       <div id="lovedforheader">
//         Loved For
//         <img id="info" src="https://s3-us-west-1.amazonaws.com/gitbuckets/hrla26-fec-tableit/tableit_reviews_summary_info_icon.png"></img>
//       </div>
//       <div id="lovedforitemslist">
//         {lovedForItems.map(a => (
//           <LovedForItem item={a.item} city={a.city} />
//         ))}
//       </div>
//       <div id="bestrestaurantscontainer" className="reviewssummarytextitem">
//         <span id="bestrestaurants">Best Restaurants in Downtown ›</span>
//       </div>
//     </div>
//   );
// };

export default LovedFor;