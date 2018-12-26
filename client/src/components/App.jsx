import React, { Component } from 'react';
import Axios from 'axios';
import ReviewsSummary from './ReviewsSummary.jsx';
import ReviewsToolbar from './ReviewsToolbar.jsx';
import ReviewsList from './ReviewsList.jsx';
import ReviewsPagesCarousel from './ReviewsPagesCarousel.jsx';

class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      restaurantId: null,
      reviews: [],
      selectedReviews: [],
      selectedSortBy: 'Newest',
      selectedFilters: [],
      sortDropdownOpen: false,
      reviewsSummary: { reviewsFilters: [] },
    };
  }

  componentWillMount = () => {
    const restaurantId = Math.floor(Math.random() * 10) + 1;
    this.setState({ restaurantId }, () => {
      this.getAllReviews()
      .then(this.getReviewsSummary);
    });
  };

  getAllReviews = () => {
    return Axios.get(`api/reviews/all/${this.state.restaurantId}`)
      .then(({data}) => {
        this.setState({ reviews: data, selectedReviews: data });
      });
  };

  getReviewsSummary = () => {
    return Axios.get(`api/reviews/summary/${this.state.restaurantId}`)
      .then(({data}) => {
        this.setState({ reviewsSummary: data });
      });
  };

  updateSelectedSortBy = (sortby) => {
    this.setState({ selectedSortBy: sortby }, this.sortReviews);
  };

  sortReviews = () => {
    let selectedReviews = [...this.state.selectedReviews];
    selectedReviews.sort((a,b) => {
      if (this.state.selectedSortBy === 'Newest') {
        return a.dined_on_date > b.dined_on_date ? -1 : 1;
      } else if (this.state.selectedSortBy === 'Highest Rating') {
        return a.overall_score > b.overall_score ? -1 : 1;
      } else if (this.state.selectedSortBy === 'Lowest Rating') {
        return a.overall_score < b.overall_score ? -1 : 1;
      }
    });

    this.setState({ selectedReviews });
  };

  filterReviews = () => {
    let reviews = [...this.state.reviews];
    let filters = this.state.selectedFilters.map(index => (
      this.state.reviewsSummary.reviewsFilters[index].toLowerCase()
    ));
    let selectedReviews = reviews.filter(review => (
      filters.every(filter => (
        review.review_text.toLowerCase().includes(filter)
      ))
    ))
    this.setState({ selectedReviews });
  };

  toggleFilter = (filterIndex) => {
    let selectedFilters = [...this.state.selectedFilters];
    if (selectedFilters.includes(filterIndex)) {
      selectedFilters.splice(selectedFilters.indexOf(filterIndex), 1);
    } else {
      selectedFilters.push(filterIndex);
    }

    this.setState({ selectedFilters }, this.filterReviews);
  };

  toggleSortDropdown = () => {
    this.setState({ sortDropdownOpen: !this.state.sortDropdownOpen });
  }

  render = () => (
    <div id="app">
      <div id="logo">
        <img id="logoicon" src="https://s3-us-west-1.amazonaws.com/gitbuckets/hrla26-fec-tableit/tableit_logo.png"></img>
        <span>TableIt®</span>
      </div>
      <ReviewsSummary reviewsSummary={this.state.reviewsSummary}/>
      <ReviewsToolbar
        reviewsSummary={this.state.reviewsSummary}
        selectedSortBy={this.state.selectedSortBy}
        sortDropdownOpen={this.state.sortDropdownOpen}
        updateSelectedSortBy={this.updateSelectedSortBy}
        selectedFilters={this.state.selectedFilters}
        toggleFilter={this.toggleFilter}
        toggleSortDropdown={this.toggleSortDropdown}
      />
      <ReviewsList selectedReviews={this.state.selectedReviews}/>
      <ReviewsPagesCarousel />
    </div>
  );
}

export default App;
