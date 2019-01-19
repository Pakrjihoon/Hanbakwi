package com.hermes.hanbakwi.service;

import java.util.List;

import com.hermes.hanbakwi.dao.CharactersDAO;

public class CharactersServiceImpl implements CharactersService{
	private CharactersDAO charactersDAO;
	
	public void setCharactersDAO(CharactersDAO charactersDAO) {
		this.charactersDAO = charactersDAO;
	}
	
	public List<Character> select(int no) {
		return charactersDAO.selectCharacter(no);
	}
}
