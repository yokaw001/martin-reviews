import React, { Component } from 'react';
import Axios from 'axios';
import Logo from './Logo.jsx';
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
      reviewsPerPage: 10,
      currentReviewsPage: 1,
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

  updateReviewsPage = (pageNumber) => {
    const totalPages = Math.ceil(this.state.selectedReviews.length / this.state.reviewsPerPage);
    const newPageNumber = Math.max(Math.min(pageNumber, totalPages), 1);
    this.setState({ currentReviewsPage: newPageNumber });
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

  toggleFilter = (filter) => {
    // if filter = "X Stars", remove from both selectedFilters AND reviewsSummary.reviewsFilters
    let selectedFilters = [...this.state.selectedFilters];
    if (selectedFilters.includes(filter)) {
      selectedFilters.splice(selectedFilters.indexOf(filter), 1);
    } else {
      selectedFilters.push(filter);
    }

    this.setState({ selectedFilters }
      // , this.filterReviewsByText
    );
  };

  addFilterAsSelected = (filter, cb) => {
    let reviewsSummary = {...this.state.reviewsSummary};
    let selectedFilters = [...this.state.selectedFilters];
    if (!reviewsSummary.reviewsFilters.includes(filter)) {
      reviewsSummary.reviewsFilters.unshift(filter);
      selectedFilters.push(reviewsSummary.reviewsFilters.indexOf(filter));
    }
    this.setState({ reviewsSummary, selectedFilters }, cb);
  }

  toggleSortDropdown = () => {
    this.setState({ sortDropdownOpen: !this.state.sortDropdownOpen });
  }

  render = () => (
    <div id="app">
      <Logo/>
      <ReviewsSummary
        reviews={this.state.reviews}
        reviewsSummary={this.state.reviewsSummary}
        selectedFilters={this.state.selectedFilters}
        // filterReviewsByScore={this.filterReviewsByScore}
        addFilterAsSelected={this.addFilterAsSelected}
        toggleFilter={this.toggleFilter}
      />
      <ReviewsToolbar
        reviewsSummary={this.state.reviewsSummary}
        selectedSortBy={this.state.selectedSortBy}
        sortDropdownOpen={this.state.sortDropdownOpen}
        updateSelectedSortBy={this.updateSelectedSortBy}
        selectedFilters={this.state.selectedFilters}
        toggleFilter={this.toggleFilter}
        toggleSortDropdown={this.toggleSortDropdown}
      />
      <ReviewsList
        reviews={this.state.reviews}
        selectedFilters={this.state.selectedFilters}
        reviewsSummary={this.state.reviewsSummary}
        // selectedReviews={this.state.selectedReviews}
        reviewsPerPage={this.state.reviewsPerPage}
        currentReviewsPage={this.state.currentReviewsPage}
      />
      <ReviewsPagesCarousel
        currentReviewsPage={this.state.currentReviewsPage}
        selectedReviews={this.state.selectedReviews}
        reviewsPerPage={this.state.reviewsPerPage}
        updateReviewsPage={this.updateReviewsPage}
      />
    </div>
  );
}

export default App;
