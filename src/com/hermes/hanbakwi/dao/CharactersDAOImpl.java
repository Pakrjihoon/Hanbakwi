package com.hermes.hanbakwi.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

public class CharactersDAOImpl implements CharactersDAO {
	private SqlSession session;

	public void setSession(SqlSession session) {
		this.session = session;
	}

	public List<Character> selectCharacter(int no) {
		return session.selectList("character.selectCharacter", no);
	}
}
