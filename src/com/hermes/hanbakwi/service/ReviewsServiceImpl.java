package com.hermes.hanbakwi.service;

import com.hermes.hanbakwi.dao.ReviewsDAO;

public class ReviewsServiceImpl implements ReviewsService {
	private ReviewsDAO reviewsDAO;

	public void setReviewsDAO(ReviewsDAO reviewsDAO) {
		this.reviewsDAO = reviewsDAO;
	}
}
