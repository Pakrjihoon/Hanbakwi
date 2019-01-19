package com.hermes.hanbakwi.dao;

import org.apache.ibatis.session.SqlSession;

public class KmsDAOImpl implements KmsDAO{
	private SqlSession session;
	
	public void setSession(SqlSession session) {
		this.session = session;
	}
}
