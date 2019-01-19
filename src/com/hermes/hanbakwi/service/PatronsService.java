package com.hermes.hanbakwi.service;

import java.util.List;

import com.hermes.hanbakwi.vo.Patron;

public interface PatronsService {
	public int insert(Patron patron);
	public List<Patron> selectList(int no);
}
