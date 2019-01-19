package com.hermes.hanbakwi.vo;

public class Fee {


	private int feeNo,siteNo;
	private String personType,price,isRep,feePrice;
	
	public Fee() {
		
	}

	public Fee(String price) {
		super();
		this.price = price;
	}

	public String getFeePrice() {
		return feePrice;
	}


	public void setFeePrice(String feePrice) {
		this.feePrice = feePrice;
	}


	public int getFeeNo() {
		return feeNo;
	}

	public void setFeeNo(int feeNo) {
		this.feeNo = feeNo;
	}

	public int getSiteNo() {
		return siteNo;
	}

	public void setSiteNo(int siteNo) {
		this.siteNo = siteNo;
	}

	public String getPersonType() {
		return personType;
	}

	public void setPersonType(String personType) {
		this.personType = personType;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getIsRep() {
		return isRep;
	}

	public void setIsRep(String isRep) {
		this.isRep = isRep;
	}
	
 
}
