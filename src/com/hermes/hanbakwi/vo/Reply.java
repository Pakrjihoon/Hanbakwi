package com.hermes.hanbakwi.vo;

import java.sql.Timestamp;

public class Reply {
	private int rpNo,uNo,no;
	private String content,type,nickname,profileImg;
	private Timestamp regdate;
	private double complex,negative,neutral,none,positive;
	
	public Reply() {
		// TODO Auto-generated constructor stub
	}

	public int getRpNo() {
		return rpNo;
	}

	public void setRpNo(int rpNo) {
		this.rpNo = rpNo;
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

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
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

	public void setProfileImg(String profile) {
		this.profileImg = profile;
	}

	public double getComplex() {
		return complex;
	}

	public void setComplex(double complex) {
		this.complex = complex;
	}

	public double getNegative() {
		return negative;
	}

	public void setNegative(double negative) {
		this.negative = negative;
	}

	public double getNeutral() {
		return neutral;
	}

	public void setNeutral(double neutral) {
		this.neutral = neutral;
	}

	public double getNone() {
		return none;
	}

	public void setNone(double none) {
		this.none = none;
	}

	public double getPositive() {
		return positive;
	}

	public void setPositive(double positive) {
		this.positive = positive;
	}

	public Reply(int uNo, int no, String content, String type, String nickname, String profileImg,
			double complex, double negative, double neutral, double none, double positive) {
		super();
		this.uNo = uNo;
		this.no = no;
		this.content = content;
		this.type = type;
		this.nickname = nickname;
		this.profileImg = profileImg;
		this.complex = complex;
		this.negative = negative;
		this.neutral = neutral;
		this.none = none;
		this.positive = positive;
	}
}
