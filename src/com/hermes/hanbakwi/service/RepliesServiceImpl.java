package com.hermes.hanbakwi.service;

import java.util.List;

import com.hermes.hanbakwi.dao.RepliesDAO;
import com.hermes.hanbakwi.vo.PageVO;
import com.hermes.hanbakwi.vo.Reply;

public class RepliesServiceImpl implements RepliesService{
	private RepliesDAO repliesDAO;
	
	public void setRepliesDAO(RepliesDAO repliesDAO) {
		this.repliesDAO = repliesDAO;
	}
	public int insert(Reply reply) {
		return repliesDAO.insert(reply);
	}

	public int total(int no) {
		return repliesDAO.selectTotal(no);
	}

	public List<Reply> selectList(PageVO no) {
		return repliesDAO.selectList(no);
	}
}
