package com.hermes.hanbakwi.service;

import com.hermes.hanbakwi.dao.KmsDAO;

public class KmsServiceImpl implements KmsService{
	private KmsDAO kmsDAO;

	public void setKmsDAO(KmsDAO kmsDAO) {
		this.kmsDAO = kmsDAO;
	}
}
