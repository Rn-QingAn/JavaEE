package com.rng.service;

import java.util.List;


import com.rng.entity.AccountFruit;

public interface AccountService {
	/**
	 * ���ɶ�����Ϣ
	 * @param accountFruit
	 * @return
	 */
	public int createAccount(AccountFruit accountFruit);
	
	
	/**
	 * ��ѯ���ж���
	 * @return
	 */
	public List<AccountFruit> SelectAccountFruit(String accountNo);
	
	
	public String SelectAccountPrice(String accountNo);
	
	/**
	 * ��ѯ����
	 * @return
	 */
	public String SelectAccountNo(String accountNo);
	
	/**
	 * ͨ�������Ų�ѯ
	 * @param accountNo
	 * @return
	 */
	public AccountFruit selectAccountAll(String accountNo);
	
	/**
	 * ��ѯ�û����ж���
	 * @return
	 */
	public List<AccountFruit> SelectUserAccountFruit(String accountUser);
}
