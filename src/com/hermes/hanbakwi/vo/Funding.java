package com.hermes.hanbakwi.vo;


import java.sql.Date;
import java.sql.Timestamp;
import java.util.Calendar;

public class Funding {

	
	//private 선언
	private int fdNo,uNo,travelDays, allPrice;
	private String title, thumbnail,intro,ammount,content,nickname,uTier,profileImg,price,require;
	private Date deadline;
	private Timestamp regdate;
	
	public String getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	public String getProfileImg() {
		return profileImg;
	}
	public void setProfileImg(String profileImg) {
		this.profileImg = profileImg;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getRequire() {
		return require;
	}
	public void setRequire(String require) {
		this.require = require;
	}
	
	public String getuTier() {
		return uTier;
	}
	public void setuTier(String uTier) {
		this.uTier = uTier;
	}
	
	public int getAllPrice() {
		return allPrice;
	}
	public void setAllPrice(int allPrice) {
		this.allPrice = allPrice;
	}
	
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public int getFdNo() {
		return fdNo;
	}
	public void setFdNo(int fdNo) {
		this.fdNo = fdNo;
	}
	public int getuNo() {
		return uNo;
	}
	public void setuNo(int uNo) {
		this.uNo = uNo;
	}
	public int getTravelDays() {
		return travelDays;
	}
	public void setTravelDays(int travelDays) {
		this.travelDays = travelDays;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public String getAmmount() {
		return ammount;
	}
	public void setAmmount(String ammount) {
		this.ammount = ammount;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getDeadline() {
		return deadline;
	}
	public void setDeadline(Date deadline) {
		this.deadline = deadline;
	}
	public Timestamp getRegdate() {
		return regdate;
	}
	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	
	
	public boolean isSuccess() {
		return allPrice>=Integer.parseInt(ammount);
	}
	
	public boolean isFail() {
		
		  long deadline= this.getDeadline().getTime();
          long now = Calendar.getInstance().getTimeInMillis();
          
          System.out.println(allPrice);
          System.out.println(ammount);
          
        return this.getAllPrice()<Integer.parseInt(this.getAmmount()) && now>=deadline;
        
	}
	
	//기본생성자 생성 

	
/*	public Funding() {
		// TODO Auto-generated constructor stub
	}*/
	
}
