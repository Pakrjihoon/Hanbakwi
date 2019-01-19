package com.hermes.hanbakwi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hermes.hanbakwi.service.ExploresService;
import com.hermes.hanbakwi.service.PlannersService;
import com.hermes.hanbakwi.vo.Explore;
import com.hermes.hanbakwi.vo.Planner;

@Controller
public class LocalController {
	private ExploresService exploresService;
	private PlannersService plannersService;
	
	public void setExploresService(ExploresService exploresService) {
		this.exploresService = exploresService;
	}
	public void setPlannersService(PlannersService plannersService) {
		this.plannersService = plannersService;
	}
	
	@RequestMapping(value="/locals", method=RequestMethod.GET)
	public String list(Model model) {
		System.out.println("GET /locals");
		model.addAttribute("exploreList",exploresService.selectList());
		model.addAttribute("plannerList",plannersService.selectList());
		return "locals";
	}
	
	@RequestMapping(value="/ajax/local/explore/{eNo}", method=RequestMethod.GET,
			produces="application/json;charset=UTF-8")
	@ResponseBody
	public Explore viewExplore(@PathVariable int eNo) {
		return exploresService.selectOne(eNo);
	}
	
	@RequestMapping(value="/ajax/local/planner/{pNo}", method=RequestMethod.GET,
			produces="application/json;charset=UTF-8")
	@ResponseBody
	public Planner viewPlanner(@PathVariable int pNo) {
		return plannersService.selectOne(pNo);
	}

}
