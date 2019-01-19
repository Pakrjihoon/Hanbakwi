package com.hermes.hanbakwi.dao;

import java.util.List;

import com.hermes.hanbakwi.vo.Image;

public interface ImagesDAO {

	public List<Image> selectImage(int no);
}
