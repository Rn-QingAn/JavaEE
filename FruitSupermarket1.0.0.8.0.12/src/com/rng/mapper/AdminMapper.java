package com.rng.mapper;

import org.apache.ibatis.annotations.Select;

import com.rng.entity.Admin;

public interface AdminMapper {
	/**
	 * �û���¼
	 * @param user
	 * @return
	 */
	@Select("select count(*) from admin where aLoginId=#{aLoginId} and aLoginPwd=#{aLoginPwd}")
	public int doLogin(Admin admin);
	
	/**
	 * ͨ����½Id��������
	 * @return
	 */
	@Select("select aName from admin where aLoginId=#{aLoginId}")
	public String selectAdminName(String aLoginId);
}
