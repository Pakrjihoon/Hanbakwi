package com.hermes.hanbakwi.dao;

import com.hermes.hanbakwi.vo.Dining;

public interface DiningsDAO {
	public Dining selectOne(int no);
	public int insert(Dining dining);
}
