package com.rng.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rng.entity.Admin;
import com.rng.mapper.AdminMapper;
import com.rng.service.AdminService;
@Service("adminService")
public class AdminServiceImpl implements AdminService {
	@Autowired
	AdminMapper adminDao;
	@Override
	public boolean doLogin(Admin admin) {
		// TODO Auto-generated method stub
		return adminDao.doLogin(admin)>0?true:false;
	}

	@Override
	public String selectAdminName(String aLoginId) {
		// TODO Auto-generated method stub
		return adminDao.selectAdminName(aLoginId);
	}

}
