package com.rng.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rng.entity.Users;
import com.rng.mapper.UsersMapper;
import com.rng.service.UsersService;
@Service("usersService")
public class UsersServiceImpl implements UsersService{
	@Autowired
	UsersMapper userDao;
	@Override
	public boolean doLogin(Users user) {
		// TODO Auto-generated method stub
		return userDao.doLogin(user)>0?true:false;
	}
	@Override
	public boolean register(Users user) {
		// TODO Auto-generated method stub
		return userDao.register(user)>0?true:false;
	}
	@Override
	public boolean updatePwd(Users user) {
		// TODO Auto-generated method stub
		return userDao.updatePwd(user)>0?true:false;
	}
	@Override
	public String selectUserName(String loginId) {
		// TODO Auto-generated method stub
		return userDao.selectUserName(loginId);
	}
	@Override
	public List<Users> SelectUserName() {
		// TODO Auto-generated method stub
		return userDao.SelectUserName();
	}
	@Override
	public Users checkName(String loginId) {
		// TODO Auto-generated method stub
		return userDao.checkName(loginId);
	}

}
