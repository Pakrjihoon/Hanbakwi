package com.hermes.hanbakwi.vo;

public class PageVO {
	private int start, end,no;
	
	private String filter;
	
	public void setFilter(String filter) {
		this.filter = filter;
	}
	
	public String getFilter() {
		return filter;
	}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public PageVO() {
		
	}
	
	public PageVO(int pageNo, int numPage ) {
		end = pageNo * numPage;
		start = end - (numPage-1);

	}
	
	public PageVO(int pageNo, int numPage , String filter) {
		end = pageNo * numPage;
		start = end - (numPage-1);
		this.filter = filter;
	}
	
	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getEnd() {
		return end;
	}

	public void setEnd(int end) {
		this.end = end;
	}
}
