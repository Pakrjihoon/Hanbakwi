package com.hermes.hanbakwi.dao;

import java.util.List;

import com.hermes.hanbakwi.vo.Planner;

public interface PlannersDAO {
	public List<Planner> selectNew5List();
	
	public List<Planner> selectList();

	public int insert(Planner planner);
	
	public int selectUser(int uNo); 
	
	public Planner selectOne(int pNo);
	
}
