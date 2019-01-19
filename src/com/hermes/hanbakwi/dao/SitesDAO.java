package com.hermes.hanbakwi.dao;

import java.util.List;

import com.hermes.hanbakwi.vo.Site;

public interface SitesDAO {

	public int selectOne(int no);

	public int insert(Site site);

	public int registerSite(Site site);

	public List<Site> selectLocation(String name);

	public Site selectSite(int no);
	
	public List<Site> selectList();
	
}
