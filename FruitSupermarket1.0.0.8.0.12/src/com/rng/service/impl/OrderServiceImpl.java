package com.rng.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.rng.entity.Order;
import com.rng.mapper.OrderMapper;
import com.rng.service.OrderService;

@Service("OrderService")
public class OrderServiceImpl implements OrderService{
	@Autowired
	OrderMapper orderDao;

	@Override
	public List<Order> findAllOrder() {
		// TODO Auto-generated method stub
		return orderDao.findAllOrder();
	}


	@Override
	public String selectOrderName(String oName) {
		// TODO Auto-generated method stub
		return orderDao.selectOrderName(oName);
	}


	@Override
	public int createOrder(Order order) {
		// TODO Auto-generated method stub
		return orderDao.createOrder(order);
	}


	@Override
	public int deleteOrder(Integer oId) {
		// TODO Auto-generated method stub
		return orderDao.deleteOrder(oId);
	}


	@Override
	public void deleteAll(List<Integer> oId) {
		// TODO Auto-generated method stub
		orderDao.deleteAll(oId);
	}


	@Override
	public List<Order> ByUserCatFuirt(String userCat) {
		// TODO Auto-generated method stub
		return orderDao.ByUserCatFuirt(userCat);
	}


	@Override
	public int emptyCat(String userCat) {
		// TODO Auto-generated method stub
		return orderDao.emptyCat(userCat);
	}

}
