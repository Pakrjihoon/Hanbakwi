package com.hermes.hanbakwi.dao;

import org.apache.ibatis.session.SqlSession;

import com.hermes.hanbakwi.vo.SiteChar;

public class SiteCharsDAOImpl implements SiteCharsDAO{
	private SqlSession session;
	
	public void setSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public int insert(SiteChar siteChar) {
		// TODO Auto-generated method stub
		return session.insert("sitechar.insert",siteChar);
	}
}
