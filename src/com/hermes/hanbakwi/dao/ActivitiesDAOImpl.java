package com.hermes.hanbakwi.dao;

import org.apache.ibatis.session.SqlSession;

import com.hermes.hanbakwi.vo.Activity;

public class ActivitiesDAOImpl implements ActivitiesDAO {
	private SqlSession session;
	
	public void setSession(SqlSession session) {
		this.session = session;
	}
	
	public int insertActivities(Activity activity) {
		return session.insert("activities.insertActivities",activity);
	}
}
