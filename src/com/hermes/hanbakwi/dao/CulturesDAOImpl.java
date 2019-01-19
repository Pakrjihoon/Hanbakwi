package com.hermes.hanbakwi.dao;

import org.apache.ibatis.session.SqlSession;

import com.hermes.hanbakwi.vo.Culture;

public class CulturesDAOImpl implements CulturesDAO {
	private SqlSession session;

	public void setSession(SqlSession session) {
		this.session = session;
	}

	public Culture selectOne(int no) {
		return session.selectOne("culture.selectOne", no);
	}

	@Override
	public int insert(Culture culture) {
		// TODO Auto-generated method stub
		return session.insert("culture.insert",culture);
	}
}
