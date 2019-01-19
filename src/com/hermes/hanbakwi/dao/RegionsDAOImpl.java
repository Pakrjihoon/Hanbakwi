package com.hermes.hanbakwi.dao;

import org.apache.ibatis.session.SqlSession;

public class RegionsDAOImpl implements RegionsDAO {
	private SqlSession session;

	public void setSession(SqlSession session) {
		this.session = session;
	}

	public int selectRegion(String gugun) {
		return session.selectOne("region.selectRegion", gugun);
	}
	public int selectGugun1(String gugun1) {
		return session.selectOne("region.selectGugun1", gugun1);
	}
	public int selectGugun2(String gugun2) {
		return session.selectOne("region.selectGugun2", gugun2);
	}

	@Override
	public int selectRegion2(String gugun2) {
		// TODO Auto-generated method stub
		return session.selectOne("region.selectRegion2",gugun2);
	}
	
	@Override
	public int selectRgNo(String city) {
		// TODO Auto-generated method stub
		return session.selectOne("region.selectRgNo",city);
	}
}
