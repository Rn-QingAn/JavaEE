package com.rng.entity;

import java.io.Serializable;

/**
 * Users类和数据库中的Users表一致 
 * @author rng99
 *
 */
public class Users  implements Serializable{
	private String phone;
	private String loginId;
	private String loginPwd;
	private String reLoginPwd;
	private String name;
	
	
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getLoginId() {
		return loginId;
	}
	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}
	public String getLoginPwd() {
		return loginPwd;
	}
	public void setLoginPwd(String loginPwd) {
		this.loginPwd = loginPwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Users() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getReLoginPwd() {
		return reLoginPwd;
	}
	public void setReLoginPwd(String reLoginPwd) {
		this.reLoginPwd = reLoginPwd;
	}
	@Override
	public String toString() {
		return "Users [phone=" + phone + ", loginId=" + loginId + ", loginPwd=" + loginPwd + ", reLoginPwd="
				+ reLoginPwd + ", name=" + name + "]";
	}
	
}
