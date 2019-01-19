package com.hermes.hanbakwi.vo;

import java.sql.Date;
import java.sql.Timestamp;

public class Journal {
	private int jNo,uNo,no,count;
	private String jThumbnail,jTitle,budget,person,isReplyTrue,isOpenTrue,type,nickname;
	private Date departureDate,returnDate;
	private Timestamp regdate;

	public Journal() {
		// TODO Auto-generated constructor stub
	}

	public int getjNo() {
		return jNo;
	}

	public void setjNo(int jNo) {
		this.jNo = jNo;
	}

	public int getuNo() {
		return uNo;
	}

	public void setuNo(int uNo) {
		this.uNo = uNo;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getjThumbnail() {
		return jThumbnail;
	}

	public void setjThumbnail(String jThumbnail) {
		this.jThumbnail = jThumbnail;
	}

	public String getjTitle() {
		return jTitle;
	}

	public void setjTitle(String jTitle) {
		this.jTitle = jTitle;
	}

	public String getBudget() {
		return budget;
	}

	public void setBudget(String budget) {
		this.budget = budget;
	}

	public String getPerson() {
		return person;
	}

	public void setPerson(String person) {
		this.person = person;
	}

	public String getIsReplyTrue() {
		return isReplyTrue;
	}

	public void setIsReplyTrue(String isReplyTrue) {
		this.isReplyTrue = isReplyTrue;
	}

	public String getIsOpenTrue() {
		return isOpenTrue;
	}

	public void setIsOpenTrue(String isOpenTrue) {
		this.isOpenTrue = isOpenTrue;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Date getDepartureDate() {
		return departureDate;
	}

	public void setDepartureDate(Date departureDate) {
		this.departureDate = departureDate;
	}

	public Date getReturnDate() {
		return returnDate;
	}

	public void setReturnDate(Date returnDate) {
		this.returnDate = returnDate;
	}

	public Timestamp getRegdate() {
		return regdate;
	}

	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	
	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
}
