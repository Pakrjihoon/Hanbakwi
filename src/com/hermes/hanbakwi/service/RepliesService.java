package com.hermes.hanbakwi.service;

import java.util.List;

import com.hermes.hanbakwi.vo.PageVO;
import com.hermes.hanbakwi.vo.Reply;

public interface RepliesService {
	public int insert(Reply reply);
	public int total(int no) ;
	public List<Reply> selectList(PageVO no);
}
