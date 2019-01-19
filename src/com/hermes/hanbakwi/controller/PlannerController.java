package com.hermes.hanbakwi.controller;

import java.sql.Date;
import java.util.Calendar;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hermes.hanbakwi.service.PlannersService;
import com.hermes.hanbakwi.service.RegionsService;
import com.hermes.hanbakwi.service.UsersService;
import com.hermes.hanbakwi.vo.Planner;

@Controller
public class PlannerController {
	
	private PlannersService plannersService;
	private RegionsService regionsService;
	private UsersService usersService;
	
	public void setPlannersService(PlannersService plannersService) {
		this.plannersService = plannersService;
	}
	public void setRegionsService(RegionsService regionsService) {
		this.regionsService = regionsService;
	}
	public void setUsersService(UsersService usersService) {
		this.usersService = usersService;
	}
	
	@RequestMapping(value="/write/planner", method=RequestMethod.GET)
	public String writePlanner() {
		System.out.println("GET /write/planner");
		return "writePlannerForm";
	}

	@RequestMapping(value="/local/planner", method=RequestMethod.POST)
	public String register(Planner planner, int uNo) {
		
		Calendar now = Calendar.getInstance();
		int test1 = regionsService.selectRegion(planner.getGugun());
		int test2 = regionsService.selectRegion2(planner.getGugun());
		System.out.println(test1);
		System.out.println(test2);
		planner.setDeadline(Date.valueOf(now.get(Calendar.YEAR)+"-"+(now.get(Calendar.MONTH)+1) +"-" + now.get(Calendar.DATE)));
		planner.setRgNo(test1);
		planner.setRgNo2(test2);

		System.out.println("/POST /planner");
		return "redirect:/locals";
	}
	
}
