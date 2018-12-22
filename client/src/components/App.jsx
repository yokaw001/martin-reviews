import React, { Component } from 'react';
import Axios from 'axios';
import ReviewsSummary from './ReviewsSummary.jsx';
import ReviewsToolbar from './ReviewsToolbar.jsx';
import ReviewsList from './ReviewsList.jsx';

class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      restaurantId: 1,
      reviews: [],
      reviewsSummary: {reviewsFilters:[]},
      currentSortBy: 'Newest',
      currentFilters: [],
    };
  }

  componentWillMount() {
    this.getAllReviews()
      .then(this.getReviewsSummary);
  }

  getAllReviews = () => {
    return Axios.get(`api/reviews/all/${this.state.restaurantId}`)
      .then(({data}) => {
        console.log(data);
        this.setState({ reviews: data });
      });
  };

  getReviewsSummary = () => {
    return Axios.get(`api/reviews/summary/${this.state.restaurantId}`)
      .then(({data}) => {
        console.log(data);
        this.setState({ reviewsSummary: data });
      });
  };

  render = () => (
    <div id="app">
      <ReviewsSummary reviewsSummary={this.state.reviewsSummary}/>
      <ReviewsToolbar
        reviewsSummary={this.state.reviewsSummary}
        currentSortBy={this.state.currentSortBy}
        currentFilters={this.state.currentFilters}
      />
      <ReviewsList reviews={this.state.reviews}/>
    </div>
  );
}

export default App;
