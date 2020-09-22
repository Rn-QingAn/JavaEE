package com.rng.mapper;

import org.apache.ibatis.annotations.Select;

import com.rng.entity.Admin;

public interface AdminMapper {
	/**
	 * 用户登录
	 * @param user
	 * @return
	 */
	@Select("select count(*) from admin where aLoginId=#{aLoginId} and aLoginPwd=#{aLoginPwd}")
	public int doLogin(Admin admin);
	
	/**
	 * 通过登陆Id查找姓名
	 * @return
	 */
	@Select("select aName from admin where aLoginId=#{aLoginId}")
	public String selectAdminName(String aLoginId);
}
