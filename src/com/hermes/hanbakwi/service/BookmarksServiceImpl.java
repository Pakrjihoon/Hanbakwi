package com.hermes.hanbakwi.service;

import com.hermes.hanbakwi.dao.BookmarksDAO;

public class BookmarksServiceImpl implements BookmarksService{
	private BookmarksDAO bookmarksDAO;
	
	public void setBookmarksDAO(BookmarksDAO bookmarksDAO) {
		this.bookmarksDAO = bookmarksDAO;
	}
	
}
