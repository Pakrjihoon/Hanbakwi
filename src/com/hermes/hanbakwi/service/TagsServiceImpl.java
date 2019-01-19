package com.hermes.hanbakwi.service;

import com.hermes.hanbakwi.dao.TagsDAO;

public class TagsServiceImpl implements TagsService {
	private TagsDAO tagsDAO;
	public void setTagsDAO(TagsDAO tagsDAO) {
		this.tagsDAO = tagsDAO;
	}
}
