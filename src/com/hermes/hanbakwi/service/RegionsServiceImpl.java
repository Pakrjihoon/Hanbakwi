package com.hermes.hanbakwi.service;

import com.hermes.hanbakwi.dao.RegionsDAO;

public class RegionsServiceImpl implements RegionsService{
	private RegionsDAO regionsDAO;
	
	public void setRegionsDAO(RegionsDAO regionsDAO) {
		this.regionsDAO = regionsDAO;
	}
	public int selectRegion(String gugun) {
		return regionsDAO.selectRegion(gugun);
	}
	public int selectGugun1(String gugun1) {
		return regionsDAO.selectGugun1(gugun1);
	}
	public int selectGugun2(String gugun2) {
		return regionsDAO.selectGugun2(gugun2);
	}
	@Override
	public int selectRegion2(String gugun2) {
		// TODO Auto-generated method stub
		return regionsDAO.selectRegion2(gugun2);
	}
}
