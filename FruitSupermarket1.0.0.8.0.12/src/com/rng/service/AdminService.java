package com.rng.service;
import com.rng.entity.Admin;

public interface AdminService {
	/**
	 * �û���¼
	 * @param user
	 * @return
	 */
	public boolean doLogin(Admin admin);
	
	/**
	 * ͨ����½Id��������
	 * @return
	 */
	public String selectAdminName(String aLoginId );
}
