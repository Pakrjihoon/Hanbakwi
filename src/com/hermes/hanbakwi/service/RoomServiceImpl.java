package com.hermes.hanbakwi.service;

import java.util.List;

import com.hermes.hanbakwi.dao.RoomDAO;
import com.hermes.hanbakwi.vo.Room;

public class RoomServiceImpl implements RoomService {
	private RoomDAO roomDAO;

	public void setRoomDAO(RoomDAO roomDAO) {
		this.roomDAO = roomDAO;
	}
	public List<Room> selectList(int no) {
		return roomDAO.selectList(no);
	}
}
