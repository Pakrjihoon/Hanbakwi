package com.hermes.hanbakwi.dao;

import org.apache.ibatis.session.SqlSession;

import com.hermes.hanbakwi.vo.Dining;

public class DiningsDAOImpl implements DiningsDAO {
	private SqlSession session;

	public void setSession(SqlSession session) {
		this.session = session;
	}

	public Dining selectOne(int no) {
		return session.selectOne("dining.selectOne", no);
	}

	@Override
	public int insert(Dining dining) {
		// TODO Auto-generated method stub
		return session.insert("dining.insert",dining);
	}
}
