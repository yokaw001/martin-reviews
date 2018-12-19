import React, { Component } from 'react';
import ReviewsSummary from './ReviewsSummary.jsx';
import ReviewsList from './ReviewsList.jsx';

class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      reviews: [],
      reviewsAgg: {},
    };
  }

  render() {
    return (<div>
      App
      <ReviewsSummary/>
      <ReviewsList/>
    </div>
    );
  }
}

export default App;