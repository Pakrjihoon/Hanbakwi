package com.hermes.hanbakwi.service;

import com.hermes.hanbakwi.dao.SiteCharsDAO;

public class SiteCharsServiceImpl implements SiteCharsService {
	private SiteCharsDAO siteCharsDAO;

	public void setSiteCharsDAO(SiteCharsDAO siteCharsDAO) {
		this.siteCharsDAO = siteCharsDAO;
	}
}
