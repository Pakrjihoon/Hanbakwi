package com.hermes.hanbakwi.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.hermes.hanbakwi.vo.Explore;

public class ExploresDAOImpl implements ExploresDAO{
	private SqlSession session;
	
	public void setSession(SqlSession session) {
		this.session = session;
	}
	public List<Explore> selectNew5List(){
		return session.selectList("explore.selectNew5List");
	}
	
	public List<Explore> selectList(){
		return session.selectList("explore.selectList");
	}
	public int insert(Explore explore) {
		return session.insert("explore.insert",explore);	
	}//insert end
	@Override
	public Explore selectOne(int eNo) {
		// TODO Auto-generated method stub
		return session.selectOne("explore.selectOne",eNo);
	}
	@Override
	public int selectUser(int uNo) {
		// TODO Auto-generated method stub
		return session.selectOne("explore.selectUser",uNo);
	}
}
