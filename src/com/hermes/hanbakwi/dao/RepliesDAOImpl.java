package com.hermes.hanbakwi.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.hermes.hanbakwi.vo.PageVO;
import com.hermes.hanbakwi.vo.Reply;

public class RepliesDAOImpl implements RepliesDAO {
	private SqlSession session;

	public void setSession(SqlSession session) {
		this.session = session;
	}

	public int insert(Reply reply) {
		return session.insert("reply.insert", reply);
	}

	public int selectTotal(int no) {
		return session.selectOne("reply.selectTotal", no);
	}

	public List<Reply> selectList(PageVO no) {
		return session.selectList("reply.selectList", no);
	}
}
