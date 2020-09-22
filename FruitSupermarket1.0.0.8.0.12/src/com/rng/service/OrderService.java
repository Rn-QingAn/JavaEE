package com.rng.service;

import java.util.List;



import com.rng.entity.Order;

public interface OrderService {
	/**
	 * 查找所有水果
	 * @return
	 */
	public List<Order> findAllOrder();
		
	/**
	 * 创建订单
	 * @param user
	 * @return
	 */
	public int createOrder(Order order);
	
	/**
	 * 通过水果名称查找订单
	 * @param oName
	 * @return
	 */
	public String selectOrderName(String oName);
	
	/**
	 * 水果删除 --->商品下架
	 * @param fName
	 * @return
	 */
	public int deleteOrder(Integer oId);  
	
	public void deleteAll(List<Integer> oId);
	
	public List<Order> ByUserCatFuirt(String userCat);
	/**
	 * 清空购物车
	 * @param oName
	 * @return
	 */
	public int emptyCat(String userCat);

}
