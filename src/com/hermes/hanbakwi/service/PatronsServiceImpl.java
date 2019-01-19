package com.hermes.hanbakwi.service;

import java.util.List;

import com.hermes.hanbakwi.dao.PatronsDAO;
import com.hermes.hanbakwi.vo.Patron;

public class PatronsServiceImpl implements PatronsService{
	private PatronsDAO patronsDAO;

	public void setPatronsDAO(PatronsDAO patronsDAO) {
		this.patronsDAO = patronsDAO;
	}
	public int insert(Patron patron) {
		return patronsDAO.insert(patron);	
	}
	public List<Patron> selectList(int no){
		return patronsDAO.selectList(no);
	}
}
