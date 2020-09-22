package com.rng.service;

import java.util.List;

import com.rng.entity.Users;

public interface UsersService  {
	/**
	 * �û���¼
	 * @param user
	 * @return
	 */
	public boolean doLogin(Users user);
	
	/**
	 * �û�ע��
	 */
	public boolean register(Users user);
	/**
	 * �����޸�
	 * @param user
	 * @return
	 */
	public boolean updatePwd(Users user);
	
	public String selectUserName(String loginId);
	
	public List<Users> SelectUserName();
	
	public Users checkName(String loginId);
}
