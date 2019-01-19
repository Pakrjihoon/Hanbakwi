package com.hermes.hanbakwi.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hermes.hanbakwi.service.UsersService;
import com.hermes.hanbakwi.vo.User;

@Controller
public class UserController {
	private UsersService usersService;
	
	public void setUsersService(UsersService usersService) {
		this.usersService = usersService;
	}
	
	@RequestMapping(value="/session", method=RequestMethod.POST)
	public String login(User user,HttpSession session, @RequestHeader String referer) {
		System.out.println("POST /session");
		session.setAttribute("loginUser", usersService.login(user));
		return "redirect:"+referer;
	}
	@RequestMapping(value="/session",method=RequestMethod.DELETE)
	public String logout(HttpSession session,@RequestHeader String referer) {
		System.out.println("DELETE /session");
		session.invalidate();
		return "redirect:"+referer;
	}
	
	@RequestMapping(value="/user/register", method=RequestMethod.GET)
	public String registerForm() {
		return "registerForm";
	}
	
	@RequestMapping(value="ajax/user/check/id", method=RequestMethod.GET,
			produces="application/json;charset=UTF-8")
	@ResponseBody
	public String checkId(String id) {
		return "{\"count\":"+usersService.checkId(id)+"}";
	}

	
}
