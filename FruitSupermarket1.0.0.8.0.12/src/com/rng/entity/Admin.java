package com.rng.entity;

public class Admin {
	public int aId;
	public String aLoginId;
	public String aLoginPwd;
	public String aName;
	public int getaId() {
		return aId;
	}
	public void setaId(int aId) {
		this.aId = aId;
	}
	public String getaLoginId() {
		return aLoginId;
	}
	public void setaLoginId(String aLoginId) {
		this.aLoginId = aLoginId;
	}
	public String getaLoginPwd() {
		return aLoginPwd;
	}
	public void setaLoginPwd(String aLoginPwd) {
		this.aLoginPwd = aLoginPwd;
	}
	public String getaName() {
		return aName;
	}
	public void setaName(String aName) {
		this.aName = aName;
	}
	@Override
	public String toString() {
		return "admin [aId=" + aId + ", aLoginId=" + aLoginId + ", aLoginPwd=" + aLoginPwd + ", aName=" + aName + "]";
	}
	
	
	
}
