package com.hermes.hanbakwi.dao;

import org.apache.ibatis.session.SqlSession;

public class FollowsDAOImpl implements FollowsDAO{
	private SqlSession session;
	
	public void setSession(SqlSession session) {
		this.session = session;
	}
}
