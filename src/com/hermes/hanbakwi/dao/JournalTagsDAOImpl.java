package com.hermes.hanbakwi.dao;

import org.apache.ibatis.session.SqlSession;

public class JournalTagsDAOImpl implements JournalTagsDAO{
	private SqlSession session;
	
	public void setSession(SqlSession session) {
		this.session = session;
	}
}
