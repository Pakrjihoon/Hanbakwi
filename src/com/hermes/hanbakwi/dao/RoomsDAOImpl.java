package com.hermes.hanbakwi.dao;

import org.apache.ibatis.session.SqlSession;

import com.hermes.hanbakwi.vo.Rooms;

public class RoomsDAOImpl implements RoomsDAO{
	private SqlSession session;
	
	public void setSession(SqlSession session) {
		this.session = session;
	}
	public Rooms selectOne(int no) {
			return session.selectOne("rooms.selectOne",no);
	}
	@Override
	public int insert(Rooms rooms) {
		// TODO Auto-generated method stub
		return session.insert("rooms.insert",rooms);
	}


}
