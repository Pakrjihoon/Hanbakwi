package com.hermes.hanbakwi.dao;

import java.util.List;

import com.hermes.hanbakwi.vo.Journal;

public interface JournalsDAO {
	public List<Journal> selectTop3List();
}
