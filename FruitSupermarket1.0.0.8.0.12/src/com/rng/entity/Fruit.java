package com.rng.entity;




public class Fruit{
	private int fId;
	private String fImage;
	private String fName;
	private String fType;
	private String fPlace;
	private String introduction;
	private String fPrice;
	private String fNumber;
	public int getfId() {
		return fId;
	}
	public void setfId(int fId) {
		this.fId = fId;
	}
	public String getfImage() {
		return fImage;
	}
	public void setfImage(String fImage) {
		this.fImage = fImage;
	}
	public String getfName() {
		return fName;
	}
	public void setfName(String fName) {
		this.fName = fName;
	}
	public String getfType() {
		return fType;
	}
	public void setfType(String fType) {
		this.fType = fType;
	}
	public String getfPlace() {
		return fPlace;
	}
	public void setfPlace(String fPlace) {
		this.fPlace = fPlace;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	public String getfPrice() {
		return fPrice;
	}
	public void setfPrice(String fPrice) {
		this.fPrice = fPrice;
	}
	

	public Fruit(String fImage,String fName, String fType, String fPlace, String introduction, String fPrice,String fNumber) {
		super();
		this.fImage=fImage;
		this.fName = fName;
		this.fType = fType;
		this.fPlace = fPlace;
		this.introduction = introduction;
		this.fPrice = fPrice;
		this.fNumber=fNumber;
	}
	public Fruit() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getfNumber() {
		return fNumber;
	}
	public void setfNumber(String fNumber) {
		this.fNumber = fNumber;
	}
	@Override
	public String toString() {
		return "Fruit [fId=" + fId + ", fImage=" + fImage + ", fName=" + fName + ", fType=" + fType + ", fPlace="
				+ fPlace + ", introduction=" + introduction + ", fPrice=" + fPrice + ", fNumber=" + fNumber + "]";
	}
	
}
