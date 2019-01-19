package com.hermes.hanbakwi.service;

import java.util.List;

import com.hermes.hanbakwi.dao.ImagesDAO;
import com.hermes.hanbakwi.vo.Image;

public class ImagesServiceImpl implements ImagesService{
	private ImagesDAO imagesDAO;

	public void setImagesDAO(ImagesDAO imagesDAO) {
		this.imagesDAO = imagesDAO;
	}

	public List<Image> selectImage(int no) {
		return imagesDAO.selectImage(no);
	}
}
