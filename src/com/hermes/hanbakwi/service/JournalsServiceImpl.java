package com.hermes.hanbakwi.service;

import java.util.List;

import com.hermes.hanbakwi.dao.JournalsDAO;
import com.hermes.hanbakwi.vo.Journal;

public class JournalsServiceImpl implements JournalsService{
	private JournalsDAO journalsDAO;
	
	public void setJournalsDAO(JournalsDAO journalsDAO) {
		this.journalsDAO = journalsDAO;
	}
	public List<Journal> top3List() {
		return journalsDAO.selectTop3List();
	}
}
