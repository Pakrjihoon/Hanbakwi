package com.hermes.hanbakwi.service;

import com.hermes.hanbakwi.dao.ScoresDAO;

public class ScoresServiceImpl implements ScoresService{
	private ScoresDAO scoresDAO;

	public void setScoresDAO(ScoresDAO scoresDAO) {
		this.scoresDAO = scoresDAO;
	}
}
