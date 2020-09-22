package com.rng.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import com.rng.entity.AccountFruit;


public interface AccountMapper {
	/**
	 * 查询所有订单
	 * @return
	 */
	@Select("select * from accountFruit where accountNo=#{accountNo}")
	public List<AccountFruit> SelectAccountFruit(String accountNo);
	
	/**
	 * 查询用户所有订单
	 * @return
	 */
	@Select("select * from accountFruit where accountUser=#{accountUser}")
	public List<AccountFruit> SelectUserAccountFruit(String accountUser);
	
	
	
	/**
	 * 生成订单
	 * @param user
	 * @return
	 */
	@Insert("insert into accountFruit(accountDate,accountNo,accountUser,accountName,accountPrice) values(#{accountDate},#{accountNo},#{accountUser},#{accountName},#{accountPrice})")
	public int createAccount(AccountFruit accountFruit);
	
	
	/**
	 * 查询总价
	 * @return
	 */
	@Select("select accountPrice from accountFruit where accountNo=#{accountNo}")
	public String  SelectAccountPrice(String accountNo);
	
	/**
	 * 查询订单
	 * @return
	 */
	@Select("select accountNo from accountFruit where accountNo=#{accountNo}")
	public String SelectAccountNo(String accountNo);
	
	/**
	 * 通过订单号查询
	 * @param accountNo
	 * @return
	 */
	@Select("select * from accountFruit where accountNo=#{accountNo}")
	public AccountFruit selectAccountAll(String accountNo);
	

	
}
