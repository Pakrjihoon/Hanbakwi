package com.hermes.hanbakwi.service;

import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import com.hermes.hanbakwi.dao.FundingsDAO;
import com.hermes.hanbakwi.util.PaginateUtil;
import com.hermes.hanbakwi.vo.Funding;
import com.hermes.hanbakwi.vo.PageVO;

public class FundingsServiceImpl implements FundingsService{
	private FundingsDAO fundingsDAO;
	
	public void setFundingsDAO(FundingsDAO fundingsDAO) {
		this.fundingsDAO = fundingsDAO;
	}

//	@Override
//	public List<Funding> selectList(PageVO pageVO) {
//		return fundingsDAO.selectList(pageVO);
//	}

	@Override
	public List<Funding> top3List() {
		return fundingsDAO.selectTop3List();
	}

//	@Override
//	public List<Funding> selectList() {
//		return fundingsDAO.selectList();
//	}

	@Override
	public int insert(Funding funding) {
		return fundingsDAO.insert(funding);
	}

	@Override
	public Funding selectOne(int fdNo) {
		return fundingsDAO.selectOne(fdNo);
	}

	@Override
	public List<Funding> success() {
		return fundingsDAO.successList();
	}

	@Override
	public List<Funding> deadline() {
		return fundingsDAO.deadlineList();
	}

	@Override
	public int total() {
		return fundingsDAO.selectTotal();
	}

	@Override
	public List<Funding> newList() {
		return fundingsDAO.newList();
	}

	@Override
	public Map<String, Object> getList(int pageNo, String filter) {
		//한 페이지당 보여질 게시물 수
				int numPage= 9;
				int numBlock = 3;
				//페이징 처리 사용
				
				
				
				
				
				
				//pageVO 대신 처리하는 맵 
						Map<String,Object> map = new ConcurrentHashMap<>(); //넘겨줄 맵 
						
						PageVO pageVO = new PageVO(pageNo,numPage, filter);
						
						int total = fundingsDAO.selectTotal();
						
						String url = "/funding/page/";
						
						map.put("fundings",fundingsDAO.selectList(pageVO));
						
						map.put("paginate",PaginateUtil.getPaginate(pageNo, total, numPage, numBlock, url));
						
						return map;
			
	}
}
