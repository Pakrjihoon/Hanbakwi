package com.hermes.hanbakwi.dao;

import java.util.List;

import com.hermes.hanbakwi.vo.PageVO;
import com.hermes.hanbakwi.vo.Reply;

public interface RepliesDAO {
	public int insert(Reply reply);

	public int selectTotal(int no);

	public List<Reply> selectList(PageVO no);
}
