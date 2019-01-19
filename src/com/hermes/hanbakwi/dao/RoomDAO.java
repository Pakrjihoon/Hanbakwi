package com.hermes.hanbakwi.dao;

import java.util.List;

import com.hermes.hanbakwi.vo.Room;

public interface RoomDAO {
	public List<Room> selectList(int no);
}
