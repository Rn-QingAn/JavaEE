package com.rng.service;
import com.rng.entity.Admin;

public interface AdminService {
	/**
	 * 用户登录
	 * @param user
	 * @return
	 */
	public boolean doLogin(Admin admin);
	
	/**
	 * 通过登陆Id查找姓名
	 * @return
	 */
	public String selectAdminName(String aLoginId );
}
