package com.hermes.hanbakwi.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.hermes.hanbakwi.vo.Planner;

public class PlannersDAOImpl implements PlannersDAO {
	private SqlSession session;

	public void setSession(SqlSession session) {
		this.session = session;
	}

	public List<Planner> selectNew5List() {
		return session.selectList("planner.selectNew5List");
	}
	public List<Planner> selectList() {
		return session.selectList("planner.selectList");
	}
	public int insert(Planner planner) {
		return session.insert("planner.insert", planner);

	}// insert end

	@Override
	public int selectUser(int uNo) {
		// TODO Auto-generated method stub
		return session.selectOne("planner.selectUser",uNo);
	}

	@Override
	public Planner selectOne(int pNo) {
		// TODO Auto-generated method stub
		return session.selectOne("planner.selectOne",pNo);
	}
}
