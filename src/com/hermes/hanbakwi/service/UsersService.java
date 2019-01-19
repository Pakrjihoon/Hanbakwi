package com.hermes.hanbakwi.service;

import java.util.List;

import com.hermes.hanbakwi.vo.User;

public interface UsersService {
	public User login(User user);
	public int register(User user);
	public List<User> top8();
	public int checkId(String id);
}
