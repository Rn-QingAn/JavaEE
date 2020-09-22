package com.rng.service;

import java.util.List;


import com.rng.entity.AccountFruit;

public interface AccountService {
	/**
	 * 生成订单信息
	 * @param accountFruit
	 * @return
	 */
	public int createAccount(AccountFruit accountFruit);
	
	
	/**
	 * 查询所有订单
	 * @return
	 */
	public List<AccountFruit> SelectAccountFruit(String accountNo);
	
	
	public String SelectAccountPrice(String accountNo);
	
	/**
	 * 查询订单
	 * @return
	 */
	public String SelectAccountNo(String accountNo);
	
	/**
	 * 通过订单号查询
	 * @param accountNo
	 * @return
	 */
	public AccountFruit selectAccountAll(String accountNo);
	
	/**
	 * 查询用户所有订单
	 * @return
	 */
	public List<AccountFruit> SelectUserAccountFruit(String accountUser);
}
