package com.hermes.hanbakwi.dao;

import java.util.List;

import com.hermes.hanbakwi.vo.Menu;

public interface MenusDAO {
	public List<Menu> selectMenu(int no);
}
