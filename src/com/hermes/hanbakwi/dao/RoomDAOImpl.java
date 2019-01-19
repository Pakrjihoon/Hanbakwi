package com.hermes.hanbakwi.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.hermes.hanbakwi.vo.Room;

public class RoomDAOImpl implements RoomDAO {
	private SqlSession session;

	public void setSession(SqlSession session) {
		this.session = session;
	}

	public List<Room> selectList(int no) {
		return session.selectList("room.selectList", no);
	}
}
