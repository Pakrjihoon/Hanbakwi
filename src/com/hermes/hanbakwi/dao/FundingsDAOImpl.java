package com.hermes.hanbakwi.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.hermes.hanbakwi.vo.Funding;
import com.hermes.hanbakwi.vo.PageVO;

public class FundingsDAOImpl implements FundingsDAO {
	private SqlSession session;

	public void setSession(SqlSession session) {
		this.session = session;
	}

	public List<Funding> selectList(PageVO pageVO) {
		return session.selectList("funding.selectList", pageVO);
	}

	public List<Funding> selectTop3List() {
		return session.selectList("funding.selectTop3List");
	}
	public List<Funding> selectList() {
		return session.selectList("funding.selectList");
	}
	public int insert(Funding funding) {
		return session.insert("funding.insert", funding);
	}
	public Funding selectOne(int fdNo) {
		return session.selectOne("funding.selectOne", fdNo);
	}// selectOne end
	public List<Funding> successList() {
		return session.selectList("funding.successList");
	}
	public List<Funding> deadlineList() {
		return session.selectList("funding.deadlineList");
	}
	public int selectTotal() {
		return session.selectOne("funding.selectTotal");
	}
	public List<Funding> newList() {
		return session.selectList("funding.newList");
	}
}
