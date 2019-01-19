package com.hermes.hanbakwi.service;

import com.hermes.hanbakwi.dao.JournalListsDAO;

public class JournalListsServiceImpl implements JournalListsService{
	private JournalListsDAO journalListsDAO;
	
	public void setJournalListsDAO(JournalListsDAO journalListsDAO) {
		this.journalListsDAO = journalListsDAO;
	}
}
