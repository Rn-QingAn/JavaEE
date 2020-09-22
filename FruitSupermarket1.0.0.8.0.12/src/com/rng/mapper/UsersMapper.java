package com.rng.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.rng.entity.Users;

public interface UsersMapper {
	/**
	 * 查询所有用户
	 * @return
	 */
	@Select("select * from users")
	public List<Users> SelectUserName();
	
	@Select("select * from users where loginId=#{loginId}")
	public Users checkName(String loginId);
	/*
	 * 用户登录
	 * @param user
	 * @return
	 */
	@Select("select count(*) from users where loginId=#{loginId} and loginPwd=#{loginPwd}")
	public int doLogin(Users user);
	
	/**
	 * 用户注册
	 * @param user
	 * @return
	 */
	@Insert("insert into users(phone,name,loginId,loginPwd) values(#{phone},#{name},#{loginId},#{loginPwd})")
	public int register(Users user);
	/**
	 * 密码修改
	 * @param user
	 * @return
	 */
	@Update("update users set loginPwd=#{reLoginPwd} where loginId=#{loginId} and loginPwd=#{loginPwd}")
	public int updatePwd(Users user);

	/**
	 * 通过登陆Id查找姓名
	 * @return
	 */
	@Select("select name from users where loginId=#{loginId}")
	public String selectUserName(String loginId);
}
