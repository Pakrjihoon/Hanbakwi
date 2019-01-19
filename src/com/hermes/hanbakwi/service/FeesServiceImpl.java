package com.hermes.hanbakwi.service;

import java.util.List;

import com.hermes.hanbakwi.dao.FeesDAO;
import com.hermes.hanbakwi.vo.Fee;

public class FeesServiceImpl implements FeesService{
	private FeesDAO feesDAO; 
	
	public void setFeesDAO(FeesDAO feesDAO) {
		this.feesDAO = feesDAO;
	}

	@Override
	public List<Fee> selectList(int no) {
		return feesDAO.selectList(no);
	}
}
