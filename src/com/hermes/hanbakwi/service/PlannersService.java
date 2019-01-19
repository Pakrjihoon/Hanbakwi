package com.hermes.hanbakwi.service;

import java.util.List;

import com.hermes.hanbakwi.vo.Planner;

public interface PlannersService {

	public List<Planner> new5List();
	public List<Planner> selectList();
	public int insert(Planner planner);
	public int selectUser(int uNo);
	public Planner selectOne(int pNo);
}
