package com.rng.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.DeleteProvider;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import com.rng.entity.Order;

public interface OrderMapper {
	/**
	 * 查找所有水果
	 * 
	 * @return
	 */
	@Select("SELECT * FROM  orderFruit")
	public List<Order> findAllOrder();

	
	/**
	 * 水果是被那个用户加入购物车
	 * @return
	 */
	@Select("SELECT * FROM  orderFruit where userCat=#{userCat}")
	public List<Order> ByUserCatFuirt(String userCat);
	/**
	 * 创建订单
	 * 
	 * @param user
	 * @return
	 */
	@Insert("insert into orderFruit(date,userCat,oImage,oName,introduction,oPrice) values(#{date},#{userCat},#{oImage},#{oName},#{introduction},#{oPrice})")
	public int createOrder(Order order);

	/**
	 * 通过水果名称查找订单
	 * 
	 * @param oName
	 * @return
	 */
	@Select("select name from orderFruit where oName=#{oName}")
	public String selectOrderName(String oName);

	/**
	 * 购物车里水果移除
	 * 
	 * @param fName
	 * @return
	 */
	@Delete("delete from orderFruit where oId=#{oId};")
	public int deleteOrder(Integer oId);
	
	public void deleteAll(List<Integer> oId);
	
	@Delete("delete from orderFruit where userCat=#{userCat}")
	public int emptyCat(String userCat);
	
}