package com.hermes.hanbakwi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MyPageController {
	
	@RequestMapping(value="/myPage/{uNo}",method=RequestMethod.GET)
	public String myPage(@PathVariable int uNo) {
		return "myPage";
	}
}
