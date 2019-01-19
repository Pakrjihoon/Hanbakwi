package com.hermes.hanbakwi.service;

import java.util.List;

import com.hermes.hanbakwi.dao.UsersDAO;
import com.hermes.hanbakwi.vo.User;

public class UsersServiceImpl implements UsersService{
	private UsersDAO usersDAO;

	public void setUsersDAO(UsersDAO usersDAO) {
		this.usersDAO = usersDAO;
	}
	public User login(User user) {
		return usersDAO.selectLogin(user);
	};
	public int register(User user) {
		return usersDAO.insert(user);
	}
	public List<User> top8() {
		return usersDAO.selectTop8List();
	}
	@Override
	public int checkId(String id) {
		// TODO Auto-generated method stub
		return usersDAO.checkId(id);
	}
	
}
