package com.hermes.hanbakwi.vo;

import java.sql.Timestamp;

public class Site {

	private int no, uNo, rgNo;
	private String name, address, tel, intro, type, isEnrolled, nickname, profileImg, city, address1, address2,
			firstNumber, secondNumber, lasteNumber,uTier;
	private double lat, lng;
	private Timestamp regdate;

	public Site() {
		// TODO Auto-generated constructor stub
	}

	
	public String getuTier() {
		return uTier;
	}


	public void setuTier(String uTier) {
		this.uTier = uTier;
	}


	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getFirstNumber() {
		return firstNumber;
	}

	public void setFirstNumber(String firstNumber) {
		this.firstNumber = firstNumber;
	}

	public String getSecondNumber() {
		return secondNumber;
	}

	public void setSecondNumber(String secondNumber) {
		this.secondNumber = secondNumber;
	}

	public String getLasteNumber() {
		return lasteNumber;
	}

	public void setLasteNumber(String lasteNumber) {
		this.lasteNumber = lasteNumber;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getuNo() {
		return uNo;
	}

	public void setuNo(int uNo) {
		this.uNo = uNo;
	}

	public int getRgNo() {
		return rgNo;
	}

	public void setRgNo(int rgNo) {
		this.rgNo = rgNo;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address1 + " " + address2;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTel() {
		return firstNumber+"-"+secondNumber+"-"+lasteNumber;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getIntro() {
		return intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getIsEnrolled() {
		return isEnrolled;
	}

	public void setIsEnrolled(String isEnrolled) {
		this.isEnrolled = isEnrolled;
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

	public String getProfileImg() {
		return profileImg;
	}

	public void setProfileImg(String profileImg) {
		this.profileImg = profileImg;
	}

	public double getLat() {
		return lat;
	}

	public void setLat(double lat) {
		this.lat = lat;
	}

	public double getLng() {
		return lng;
	}

	public void setLng(double lng) {
		this.lng = lng;
	}
}
