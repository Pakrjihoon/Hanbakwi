package com.hermes.hanbakwi.service;

import com.hermes.hanbakwi.dao.CoinsDAO;

public class CoinsServiceImpl implements CoinsService{
	private CoinsDAO coinsDAO;
	
	public void setCoinsDAO(CoinsDAO coinsDAO) {
		this.coinsDAO = coinsDAO;
	}
}
