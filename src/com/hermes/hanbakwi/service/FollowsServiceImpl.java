package com.hermes.hanbakwi.service;

import com.hermes.hanbakwi.dao.FollowsDAO;

public class FollowsServiceImpl implements FollowsService{
	private FollowsDAO followsDAO;

	public void setFollowsDAO(FollowsDAO followsDAO) {
		this.followsDAO = followsDAO;
	}
}
