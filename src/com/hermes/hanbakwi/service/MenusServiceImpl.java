package com.hermes.hanbakwi.service;

import java.util.List;

import com.hermes.hanbakwi.dao.MenusDAO;
import com.hermes.hanbakwi.vo.Menu;

public class MenusServiceImpl implements MenusService {
	private MenusDAO menusDAO;

	public void setMenusDAO(MenusDAO menusDAO) {
		this.menusDAO = menusDAO;
	}
	public List<Menu> selectMenu(int no) {
		return menusDAO.selectMenu(no);
	}
}
