package com.hermes.hanbakwi.service;

import java.util.List;

import com.hermes.hanbakwi.dao.PlannersDAO;
import com.hermes.hanbakwi.vo.Planner;

public class PlannersServiceImpl implements PlannersService{
	private PlannersDAO plannersDAO;

	public void setPlannersDAO(PlannersDAO plannersDAO) {
		this.plannersDAO = plannersDAO;
	}
	public List<Planner> new5List() {
		return plannersDAO.selectNew5List();
	}
	public List<Planner> selectList() {
		return plannersDAO.selectList();
	}
	public int insert(Planner planner) {
		return plannersDAO.insert(planner);
	}// insert end
	@Override
	public int selectUser(int uNo) {
		// TODO Auto-generated method stub
		return plannersDAO.selectUser(uNo);
	}
	@Override
	public Planner selectOne(int pNo) {
		// TODO Auto-generated method stub
		return plannersDAO.selectOne(pNo);
	}
}
