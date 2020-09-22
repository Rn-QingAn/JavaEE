package com.rng.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import com.rng.entity.AccountFruit;


public interface AccountMapper {
	/**
	 * ��ѯ���ж���
	 * @return
	 */
	@Select("select * from accountFruit where accountNo=#{accountNo}")
	public List<AccountFruit> SelectAccountFruit(String accountNo);
	
	/**
	 * ��ѯ�û����ж���
	 * @return
	 */
	@Select("select * from accountFruit where accountUser=#{accountUser}")
	public List<AccountFruit> SelectUserAccountFruit(String accountUser);
	
	
	
	/**
	 * ���ɶ���
	 * @param user
	 * @return
	 */
	@Insert("insert into accountFruit(accountDate,accountNo,accountUser,accountName,accountPrice) values(#{accountDate},#{accountNo},#{accountUser},#{accountName},#{accountPrice})")
	public int createAccount(AccountFruit accountFruit);
	
	
	/**
	 * ��ѯ�ܼ�
	 * @return
	 */
	@Select("select accountPrice from accountFruit where accountNo=#{accountNo}")
	public String  SelectAccountPrice(String accountNo);
	
	/**
	 * ��ѯ����
	 * @return
	 */
	@Select("select accountNo from accountFruit where accountNo=#{accountNo}")
	public String SelectAccountNo(String accountNo);
	
	/**
	 * ͨ�������Ų�ѯ
	 * @param accountNo
	 * @return
	 */
	@Select("select * from accountFruit where accountNo=#{accountNo}")
	public AccountFruit selectAccountAll(String accountNo);
	

	
}
