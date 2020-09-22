package com.rng.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.rng.entity.Users;

public interface UsersMapper {
	/**
	 * ��ѯ�����û�
	 * @return
	 */
	@Select("select * from users")
	public List<Users> SelectUserName();
	
	@Select("select * from users where loginId=#{loginId}")
	public Users checkName(String loginId);
	/*
	 * �û���¼
	 * @param user
	 * @return
	 */
	@Select("select count(*) from users where loginId=#{loginId} and loginPwd=#{loginPwd}")
	public int doLogin(Users user);
	
	/**
	 * �û�ע��
	 * @param user
	 * @return
	 */
	@Insert("insert into users(phone,name,loginId,loginPwd) values(#{phone},#{name},#{loginId},#{loginPwd})")
	public int register(Users user);
	/**
	 * �����޸�
	 * @param user
	 * @return
	 */
	@Update("update users set loginPwd=#{reLoginPwd} where loginId=#{loginId} and loginPwd=#{loginPwd}")
	public int updatePwd(Users user);

	/**
	 * ͨ����½Id��������
	 * @return
	 */
	@Select("select name from users where loginId=#{loginId}")
	public String selectUserName(String loginId);
}
