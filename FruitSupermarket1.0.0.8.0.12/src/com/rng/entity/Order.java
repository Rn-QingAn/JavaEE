package com.rng.entity;

public class Order {
	
	private int oId;
	private String date;
	private String oImage;
	private String oName;
	private String introduction;
	private String oPrice;
	private String userCat;
	
	
	public int getoId() {
		return oId;
	}
	public void setoId(int oId) {
		this.oId = oId;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getoImage() {
		return oImage;
	}
	public void setoImage(String oImage) {
		this.oImage = oImage;
	}
	public String getoName() {
		return oName;
	}
	public void setoName(String oName) {
		this.oName = oName;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	
	public Order() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getoPrice() {
		return oPrice;
	}
	public void setoPrice(String oPrice) {
		this.oPrice = oPrice;
	}
	public String getUserCat() {
		return userCat;
	}
	public void setUserCat(String userCat) {
		this.userCat = userCat;
	}
	@Override
	public String toString() {
		return "Order [oId=" + oId + ", date=" + date + ", oImage=" + oImage + ", oName=" + oName + ", introduction="
				+ introduction + ", oPrice=" + oPrice + ", userCat=" + userCat + "]";
	}
	public Order(String date, String userCat, String oImage, String oName, String introduction, String oPrice) {
		super();
		this.date = date;
		this.userCat = userCat;
		this.oImage = oImage;
		this.oName = oName;
		this.introduction = introduction;
		this.oPrice = oPrice;
		
	}
}
