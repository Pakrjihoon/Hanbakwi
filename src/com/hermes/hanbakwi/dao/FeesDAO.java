package com.hermes.hanbakwi.dao;

import java.util.List;

import com.hermes.hanbakwi.vo.Fee;

public interface FeesDAO {
	public List<Fee> selectList(int no);
	public int insert(Fee fee);
}
