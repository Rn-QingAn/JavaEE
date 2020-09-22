package com.rng.entity;

public class AccountFruit {
	private int accountId;
	private String accountDate;
	private String accountNo;
	private String accountUser;
	private String accountName;
	private String accountPrice;
	public int getAccountId() {
		return accountId;
	}
	public void setAccountId(int accountId) {
		this.accountId = accountId;
	}
	public String getAccountDate() {
		return accountDate;
	}
	
	public void setAccountDate(String accountDate) {
		this.accountDate = accountDate;
	}
	public String getAccountNo() {
		return accountNo;
	}
	public void setAccountNo(String accountNo) {
		this.accountNo = accountNo;
	}
	public String getAccountName() {
		return accountName;
	}
	public void setAccountName(String accountName) {
		this.accountName = accountName;
	}
	public String getAccountPrice() {
		return accountPrice;
	}
	public void setAccountPrice(String accountPrice) {
		this.accountPrice = accountPrice;
	}
	public String getAccountUser() {
		return accountUser;
	}
	public void setAccountUser(String accountUser) {
		this.accountUser = accountUser;
	}
	@Override
	public String toString() {
		return "AccountFruit [accountId=" + accountId + ", accountDate=" + accountDate + ", accountNo=" + accountNo
				+ ", accountUser=" + accountUser + ", accountName=" + accountName + ", accountPrice=" + accountPrice
				+ "]";
	}
	
	
	
}
