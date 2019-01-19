package com.hermes.hanbakwi.dao;

import com.hermes.hanbakwi.vo.Culture;
import com.hermes.hanbakwi.vo.Rooms;

public interface RoomsDAO {

	public Rooms selectOne(int no);
	public int insert(Rooms rooms);
}
