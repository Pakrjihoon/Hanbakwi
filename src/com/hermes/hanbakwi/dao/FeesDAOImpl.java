package com.hermes.hanbakwi.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.hermes.hanbakwi.vo.Fee;

public class FeesDAOImpl implements FeesDAO{
	private SqlSession session;
	public void setSession(SqlSession session) {
		this.session = session;
	}
	public List<Fee> selectList(int no){	
		return session.selectList("fee.selectList",no);	
	}
	@Override
	public int insert(Fee fee) {
		// TODO Auto-generated method stub
		return session.insert("fee.insert",fee);
	}
}
