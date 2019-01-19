package com.hermes.hanbakwi.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.hermes.hanbakwi.vo.Journal;

public class JournalsDAOImpl implements JournalsDAO{
	private SqlSession session;
	
	public void setSession(SqlSession session) {
		this.session = session;
	}
	public List<Journal> selectTop3List(){
		return session.selectList("journal.selectTop3List");
	}
}
