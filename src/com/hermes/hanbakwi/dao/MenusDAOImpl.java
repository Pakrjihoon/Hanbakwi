package com.hermes.hanbakwi.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.hermes.hanbakwi.vo.Menu;

public class MenusDAOImpl implements MenusDAO {
	private SqlSession session;

	public void setSession(SqlSession session) {
		this.session = session;
	}

	public List<Menu> selectMenu(int no) {
		return session.selectList("menu.selectMenu", no);
	}

}
