package com.hermes.hanbakwi.dao;

import java.util.List;

import com.hermes.hanbakwi.vo.User;

public interface UsersDAO {
	public User selectLogin (User user);
	public int selectCheckId(String id);
	public int insert(User user);
	public List<User> selectTop8List();
	public int checkId(String id);
}
