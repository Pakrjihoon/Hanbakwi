package com.hermes.hanbakwi.service;

import java.util.List;

import com.hermes.hanbakwi.dao.ExploresDAO;
import com.hermes.hanbakwi.vo.Explore;

public class ExploresServiceImpl implements ExploresService{
	private ExploresDAO exploresDAO;
	
	public void setExploresDAO(ExploresDAO exploresDAO) {
		this.exploresDAO = exploresDAO;
	}

	public List<Explore> new5List() {
		return exploresDAO.selectNew5List(); 
	}
	public List<Explore> selectList() {
		return exploresDAO.selectList();
	}

	@Override
	public int register(Explore explore) {
		// TODO Auto-generated method stub
		return exploresDAO.insert(explore);
	}

	@Override
	public Explore selectOne(int eNo) {
		// TODO Auto-generated method stub
		return exploresDAO.selectOne(eNo);
	}

	@Override
	public int selectUser(int uNo) {
		// TODO Auto-generated method stub
		return exploresDAO.selectUser(uNo);
	}
}
