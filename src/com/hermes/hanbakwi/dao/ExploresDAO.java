package com.hermes.hanbakwi.dao;

import java.util.List;

import com.hermes.hanbakwi.vo.Explore;

public interface ExploresDAO {
	public List<Explore> selectNew5List();
	public List<Explore> selectList();
	public int insert(Explore explore);
	public Explore selectOne(int eNo);
	public int selectUser(int uNo);
}
