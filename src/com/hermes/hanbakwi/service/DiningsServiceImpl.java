package com.hermes.hanbakwi.service;

import com.hermes.hanbakwi.dao.DiningsDAO;
import com.hermes.hanbakwi.vo.Dining;

public class DiningsServiceImpl implements DiningsService{
	private DiningsDAO diningsDAO;
	
	public void setDiningsDAO(DiningsDAO diningsDAO) {
		this.diningsDAO = diningsDAO;
	}
	public Dining selectOne(int no) {
		return diningsDAO.selectOne(no);
	}
}
