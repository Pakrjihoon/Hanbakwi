package com.hermes.hanbakwi.dao;

import java.util.List;

import com.hermes.hanbakwi.vo.Patron;

public interface PatronsDAO {
	public int insert(Patron patron);
	public List<Patron> selectList(int no);
}
