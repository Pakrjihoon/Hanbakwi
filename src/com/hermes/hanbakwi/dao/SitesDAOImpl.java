package com.hermes.hanbakwi.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.hermes.hanbakwi.vo.Site;

public class SitesDAOImpl implements SitesDAO {

	private SqlSession session;

	public void setSession(SqlSession session) {
		this.session = session;
	}

	public int selectOne(int no) {
		return session.insert("site.selectOne", no);
	}

	public int insert(Site site) {
		return session.insert("site.insert", site);
	}

	public int registerSite(Site site) {
		return session.insert("site.registerSite", site);
	}

	public List<Site> selectLocation(String name) {
		return session.selectList("site.selectLocation", name);
	}

	public Site selectSite(int no) {
		return session.selectOne("site.selectSite", no);
	}

	@Override
	public List<Site> selectList() {
		// TODO Auto-generated method stub
		return session.selectList("site.selectList");
	}
	
}
