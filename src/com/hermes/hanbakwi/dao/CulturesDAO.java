package com.hermes.hanbakwi.dao;

import com.hermes.hanbakwi.vo.Culture;

public interface CulturesDAO {
	public Culture selectOne(int no);
	public int insert(Culture culture);
}
