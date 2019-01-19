package com.hermes.hanbakwi.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import com.hermes.hanbakwi.dao.CulturesDAO;
import com.hermes.hanbakwi.dao.DiningsDAO;
import com.hermes.hanbakwi.dao.FeesDAO;
import com.hermes.hanbakwi.dao.RegionsDAO;
import com.hermes.hanbakwi.dao.RoomsDAO;
import com.hermes.hanbakwi.dao.SiteCharsDAO;
import com.hermes.hanbakwi.dao.SitesDAO;
import com.hermes.hanbakwi.vo.Culture;
import com.hermes.hanbakwi.vo.Dining;
import com.hermes.hanbakwi.vo.Fee;
import com.hermes.hanbakwi.vo.Room;
import com.hermes.hanbakwi.vo.Rooms;
import com.hermes.hanbakwi.vo.Site;
import com.hermes.hanbakwi.vo.SiteChar;

public class SitesServiceImpl implements SitesService {
	private SitesDAO sitesDAO;
	private RegionsDAO regionsDAO;
	private CulturesDAO culturesDAO;
	private SiteCharsDAO siteCharsDAO;
	private FeesDAO feesDAO;
	private RoomsDAO roomsDAO;
	private DiningsDAO diningsDAO;
	
	public void setDiningsDAO(DiningsDAO diningsDAO) {
		this.diningsDAO = diningsDAO;
	}
	
	public void setRoomsDAO(RoomsDAO roomsDAO) {
		this.roomsDAO = roomsDAO;
	}
	
	public void setFeesDAO(FeesDAO feesDAO) {
		this.feesDAO = feesDAO;
	}
	
	public void setSiteCharsDAO(SiteCharsDAO siteCharsDAO) {
		this.siteCharsDAO = siteCharsDAO;
	}
	
	public void setCulturesDAO(CulturesDAO culturesDAO) {
		this.culturesDAO = culturesDAO;
	}

	public void setSitesDAO(SitesDAO sitesDAO) {
		this.sitesDAO = sitesDAO;
	}
	
	public void setRegionsDAO(RegionsDAO regionsDAO) {
		this.regionsDAO = regionsDAO;
	}
	
	

	@Override
	public Map<String, Object> selectLocation(String name) {
		// TODO Auto-generated method stub

		Map<String, Object> map = new ConcurrentHashMap<>();

		List<Site> list = sitesDAO.selectLocation(name);

		map.put("list", list);

		return map;
	}


	@Override
	public void info(int uNo,Site site,String open,String close,String off,String cType,int[] crNo,String rsType,String dType,
			String foodType,String[] feePrice,int isRepNo) {
		// TODO Auto-generated method stub

		site.setRgNo(regionsDAO.selectRgNo(site.getCity()));
		site.setuNo(uNo);
		
		sitesDAO.insert(site);
		
		int siteNo = site.getNo();
	
	/*	for() {
			
			Fee fee  = new Fee();
			
			fee.setSiteNo(siteNo);
			
			FeesService.insert();
		}
		*/
		switch(site.getType()) {
		case "L":
			 Rooms rooms=new Rooms();
			 rooms.setSiteNo(siteNo);
			 rooms.setCheckIn(open);
			 rooms.setCheckOut(close);
			 rooms.setRsType(rsType);
			 roomsDAO.insert(rooms);
			 for(int cchar:crNo) {
					SiteChar siteChar=new SiteChar();
					siteChar.setCrNo(cchar);
					siteChar.setSiteNo(siteNo);
					siteCharsDAO.insert(siteChar);
				}
			 
			 //RoomsDAO.class 
			break;
		case "D":
			Dining dining=new Dining();
			dining.setSiteNo(siteNo);
			dining.setOpen(open);
			dining.setClose(close);
			dining.setOff(off);
			dining.setdType(dType);
			dining.setFoodType(foodType);
			diningsDAO.insert(dining);
			for(int cchar:crNo) {
				SiteChar siteChar=new SiteChar();
				siteChar.setCrNo(cchar);
				siteChar.setSiteNo(siteNo);
				siteCharsDAO.insert(siteChar);
			}
			
		break;
		case "C":
			Culture culture = new Culture();
			
			culture.setSiteNo(siteNo);
			culture.setOpen(open);
			culture.setClose(close);
			culture.setOff(off);
			culture.setcType(cType);
			culturesDAO.insert(culture);
			for(int cchar:crNo) {
				SiteChar siteChar=new SiteChar();
				siteChar.setCrNo(cchar);
				siteChar.setSiteNo(siteNo);
				siteCharsDAO.insert(siteChar);
			}
			for(int i=0;i<feePrice.length;i++) {
				
				String isRep = "F";
				
				if(i==isRepNo) {
					isRep = "T";
				}
				
				Fee fee=new Fee();
				fee.setSiteNo(siteNo);
				fee.setIsRep(isRep);
				fee.setPrice(feePrice[i]);
				feesDAO.insert(fee);
			}
			break;
		}
	}

	@Override
	public Map<String, Object> getSite() {
		// TODO Auto-generated method stub
		Map<String, Object> map= new HashMap<>();
		
		map.put("list", sitesDAO.selectList());
		
		return map;
	}
}
