package com.hermes.hanbakwi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hermes.hanbakwi.service.CulturesService;
import com.hermes.hanbakwi.service.DiningsService;
import com.hermes.hanbakwi.service.RoomService;

@Controller
public class ContentController {
	
	private RoomService roomService;
	private DiningsService diningsService;
	private CulturesService culturesService;
	
	public void setRoomService(RoomService roomService) {
		this.roomService = roomService;
	}
	public void setCulturesService(CulturesService culturesService) {
		this.culturesService = culturesService;
	}
	public void setDiningsService(DiningsService diningsService) {
		this.diningsService = diningsService;
	}
	
	
	@RequestMapping(value="/room", method=RequestMethod.GET)
	public String contentRoom() {
		return "contentRoom";
	}
	@RequestMapping(value="/food", method=RequestMethod.GET)
	public String contentFood() {
		return "contentFood";
	}
	@RequestMapping(value="/culture",method=RequestMethod.GET)
	public String contentCulture() {
		return "contentCulture";
	}
	
	@RequestMapping(value="/room/no",method=RequestMethod.GET)
	public String selectRoom() {
		return "selectRoom";
	}
	@RequestMapping(value="/food/no",method=RequestMethod.GET)
	public String selectDining() {
		return "selectDining";
	}
	@RequestMapping(value="/culture/no",method=RequestMethod.GET)
	public String selectCulture() {
		return "selectCulture";
	}
}	
