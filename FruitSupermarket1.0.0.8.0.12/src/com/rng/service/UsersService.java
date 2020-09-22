package com.rng.service;

import java.util.List;

import com.rng.entity.Users;

public interface UsersService  {
	/**
	 * 用户登录
	 * @param user
	 * @return
	 */
	public boolean doLogin(Users user);
	
	/**
	 * 用户注册
	 */
	public boolean register(Users user);
	/**
	 * 密码修改
	 * @param user
	 * @return
	 */
	public boolean updatePwd(Users user);
	
	public String selectUserName(String loginId);
	
	public List<Users> SelectUserName();
	
	public Users checkName(String loginId);
}
