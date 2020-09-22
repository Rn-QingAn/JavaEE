package com.rng.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rng.entity.AccountFruit;
import com.rng.mapper.AccountMapper;
import com.rng.service.AccountService;
@Service("accountService")
public class AccountServiceImpl implements AccountService{
	@Autowired
	AccountMapper accountDao;
	
	@Override
	public int createAccount(AccountFruit accountFruit) {
		// TODO Auto-generated method stub
		return accountDao.createAccount(accountFruit);
	}

	@Override
	public List<AccountFruit> SelectAccountFruit(String accountNo) {
		// TODO Auto-generated method stub
		return accountDao.SelectAccountFruit(accountNo);
	}

	@Override
	public String SelectAccountPrice(String accountNo) {
		// TODO Auto-generated method stub
		return accountDao.SelectAccountPrice(accountNo);
	}

	@Override
	public String SelectAccountNo(String accountNo) {
		// TODO Auto-generated method stub
		return accountDao.SelectAccountNo(accountNo);
	}

	@Override
	public AccountFruit selectAccountAll(String accountNo) {
		// TODO Auto-generated method stub
		return accountDao.selectAccountAll(accountNo);
	}

	@Override
	public List<AccountFruit> SelectUserAccountFruit(String accountUser) {
		// TODO Auto-generated method stub
		return accountDao.SelectUserAccountFruit(accountUser);
	}

}
