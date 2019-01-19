package com.hermes.hanbakwi.service;

import java.util.List;
import java.util.Map;

import com.hermes.hanbakwi.vo.Funding;
import com.hermes.hanbakwi.vo.PageVO;

public interface FundingsService {
	//public List<Funding> selectList(PageVO pageVO);
	public List<Funding> top3List();
	//public List<Funding> selectList();
	public int insert(Funding funding);
	public Funding selectOne(int fdNo);
	public List<Funding> success();
	public List<Funding> deadline();
	public int total();
	public List<Funding> newList();
	public Map<String, Object> getList(int pageNo, String filter);
}
