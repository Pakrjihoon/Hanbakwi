package com.hermes.hanbakwi.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.hermes.hanbakwi.vo.Patron;

public class PatronsDAOImpl implements PatronsDAO{
	private SqlSession session;
	
	public void setSession(SqlSession session) {
		this.session = session;
	}
	public int insert(Patron patron) {
		return session.insert("patrons.insert",patron);	
	}
	public List<Patron> selectList(int no){
		return session.selectList("patrons.selectList",no);
	}
}
