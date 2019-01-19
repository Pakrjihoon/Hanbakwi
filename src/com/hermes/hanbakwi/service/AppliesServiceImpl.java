package com.hermes.hanbakwi.service;

import com.hermes.hanbakwi.dao.AppliesDAO;

public class AppliesServiceImpl implements AppliesService {
	private AppliesDAO appliesDAO;
	
	public void setAppliesDAO(AppliesDAO appliesDAO) {
		this.appliesDAO = appliesDAO;
	}
}
