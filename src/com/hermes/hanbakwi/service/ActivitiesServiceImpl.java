package com.hermes.hanbakwi.service;

import com.hermes.hanbakwi.dao.ActivitiesDAO;
import com.hermes.hanbakwi.vo.Activity;

public class ActivitiesServiceImpl implements ActivitiesService{
	private ActivitiesDAO activitiesDAO;
	
	public void setActivitiesDAO(ActivitiesDAO activitiesDAO) {
		this.activitiesDAO = activitiesDAO;
	}
	public int register(Activity activity) {
		return activitiesDAO.insertActivities(activity);
	}
}
