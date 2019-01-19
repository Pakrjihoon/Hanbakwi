package com.hermes.hanbakwi.controller;

import java.sql.Date;
import java.util.Calendar;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hermes.hanbakwi.service.ExploresService;
import com.hermes.hanbakwi.service.RegionsService;
import com.hermes.hanbakwi.service.UsersService;
import com.hermes.hanbakwi.vo.Explore;

@Controller
public class ExploreController {
	
	private ExploresService exploresService;
	private RegionsService regionsService;
	private UsersService usersService;
	
	public void setExploresService(ExploresService exploresService) {
		this.exploresService = exploresService;
	}
	public void setRegionsService(RegionsService regionsService) {
		this.regionsService = regionsService;
	}
	public void setUsersService(UsersService usersService) {
		this.usersService = usersService;
	}
	
	@RequestMapping(value="/write/explore", method=RequestMethod.GET)
	public String writeExplore() {
		System.out.println("GET /write/Explore");
		
		return "writeExploreForm";
	}
	
	@RequestMapping(value="/local/explore", method=RequestMethod.POST)
	public String register(Explore explore, int uNo) {
		
	
		Calendar now = Calendar.getInstance();
		explore.setDeadline(Date.valueOf(now.get(Calendar.YEAR)+"-"+(now.get(Calendar.MONTH)+1) +"-" + now.get(Calendar.DATE)));
		explore.setRgNo(regionsService.selectRegion(explore.getGugun()));
		
		System.out.println("/POST /explore");
		System.out.println(exploresService.register(explore));
		return "redirect:/locals";
	}
}
