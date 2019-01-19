package com.hermes.hanbakwi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hermes.hanbakwi.service.ExploresService;
import com.hermes.hanbakwi.service.FundingsService;
import com.hermes.hanbakwi.service.PlannersService;

@Controller
public class IndexController {
	
	private FundingsService fundingsService;
	private ExploresService exploresService;
	private PlannersService plannersService;
	
	public void setFundingsService(FundingsService fundingsService) {
		this.fundingsService = fundingsService;
	}
	public void setExploresService(ExploresService exploresService) {
		this.exploresService = exploresService;
	}
	public void setPlannersService(PlannersService plannersService) {
		this.plannersService = plannersService;
	}
	
	@RequestMapping(value= {"/","/index"},method=RequestMethod.GET)
	public String index(Model model) {
		System.out.println("GET /index");
		model.addAttribute("exploreList",exploresService.new5List());
		model.addAttribute("newList", fundingsService.newList());
		model.addAttribute("plannerList", plannersService.new5List());
		return "index";
	}

}
