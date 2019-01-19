package com.hermes.hanbakwi.service;

import com.hermes.hanbakwi.dao.JournalTagsDAO;

public class JournalTagsServiceImpl implements JournalTagsService{
	private JournalTagsDAO journalTagsDAO;

	public void setJournalTagsDAO(JournalTagsDAO journalTagsDAO) {
		this.journalTagsDAO = journalTagsDAO;
	}
}
