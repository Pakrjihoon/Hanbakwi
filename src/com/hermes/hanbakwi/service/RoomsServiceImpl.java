package com.hermes.hanbakwi.service;

import com.hermes.hanbakwi.dao.RoomsDAO;
import com.hermes.hanbakwi.vo.Rooms;

public class RoomsServiceImpl implements RoomsService{
	private RoomsDAO roomsDAO;

	public void setRoomsDAO(RoomsDAO roomsDAO) {
		this.roomsDAO = roomsDAO;
	}
	public Rooms selectOne(int no) {
		return roomsDAO.selectOne(no);
	}
}
