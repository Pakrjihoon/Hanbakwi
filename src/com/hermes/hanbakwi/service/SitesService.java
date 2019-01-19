package com.hermes.hanbakwi.service;

import java.util.List;
import java.util.Map;
import com.hermes.hanbakwi.vo.Site;

public interface SitesService {

	public Map<String, Object> selectLocation(String name);

	public void info(int uNo,Site site,String open,String close,String off,String cType,int[] crNo
			,String rsType,String dType,String foodType,String[] feePrice,int isRep);
	
	public Map<String, Object> getSite();
}
