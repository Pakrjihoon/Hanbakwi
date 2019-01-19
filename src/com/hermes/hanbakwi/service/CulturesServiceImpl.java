package com.hermes.hanbakwi.service;

import com.hermes.hanbakwi.dao.CulturesDAO;
import com.hermes.hanbakwi.vo.Culture;

public class CulturesServiceImpl implements CulturesService{
	private CulturesDAO culturesDAO;

	public void setCulturesDAO(CulturesDAO culturesDAO) {
		this.culturesDAO = culturesDAO;
	}
	public Culture selectOne(int no) {
		return culturesDAO.selectOne(no);
	}
}
