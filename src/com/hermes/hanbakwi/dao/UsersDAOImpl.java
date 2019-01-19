package com.hermes.hanbakwi.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.hermes.hanbakwi.vo.User;

public class UsersDAOImpl implements UsersDAO{
	private SqlSession session;
	
	public void setSession(SqlSession session) {
		this.session = session;
	}
	
	public User selectLogin (User user) {
		return session.selectOne("users.selectLogin", user);
	}//selectLogin() end 
	public int selectCheckId(String id) {
		return session.selectOne("users.selectCheckId",id);
	}
	public int insert(User user) {
		return session.insert("users.insert",user);
	}
	public List<User> selectTop8List(){
		return session.selectList("users.selectTop8List");
	}

	@Override
	public int checkId(String id) {
		return session.selectOne("users.selectCheckId",id);
	}
}
