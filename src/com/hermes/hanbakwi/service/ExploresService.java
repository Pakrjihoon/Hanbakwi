package com.hermes.hanbakwi.service;

import java.util.List;

import com.hermes.hanbakwi.vo.Explore;

public interface ExploresService {
	public List<Explore> new5List();
	public List<Explore> selectList();
	public int register(Explore explore);
	public Explore selectOne(int eNo);
	public int selectUser(int uNo);
}
