package com.hermes.hanbakwi.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.hermes.hanbakwi.vo.Image;

public class ImagesDAOimpl implements ImagesDAO{
	private SqlSession session;
	
	public void setSession(SqlSession session) {
		this.session = session;
	}
	public List<Image> selectImage(int no){
		return session.selectList("image.selectImage",no);
	}
}
