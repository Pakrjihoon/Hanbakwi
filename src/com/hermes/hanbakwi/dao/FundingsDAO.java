package com.hermes.hanbakwi.dao;

import java.util.List;

import com.hermes.hanbakwi.vo.Funding;
import com.hermes.hanbakwi.vo.PageVO;

public interface FundingsDAO {
	public List<Funding> selectList(PageVO pageVO);
	public List<Funding> selectTop3List();
	public List<Funding> selectList();
	public int insert(Funding funding);
	public Funding selectOne(int fdNo);
	public List<Funding> successList();
	public List<Funding> deadlineList();
	public int selectTotal();
	public List<Funding> newList();
}
