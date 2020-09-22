package com.rng.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rng.entity.Order;
import com.rng.service.OrderService;


@Controller
public class OrderController {
	@Autowired
	OrderService orderService;
	
	@RequestMapping("UserOrders")
	public String OrderService(HttpSession session) {
		String userCat=(String) session.getAttribute("name");
		List<Order> order=orderService.ByUserCatFuirt(userCat);
		session.setAttribute("ORDER", order);
		System.out.println("======================>>>>>>>>>>>>>>>>>>>>>确认订单");
		return "Orders";
	}
	
	/**
	 * 返回购物车
	 * @param session
	 * @return
	 */
	@RequestMapping("ShoppingCart")
	public String addShoppingCart(HttpSession session) {
		String userCat=(String) session.getAttribute("name");
		List<Order> order=orderService.ByUserCatFuirt(userCat);
		session.setAttribute("ORDER", order);
		System.out.println("======================>>>>>>>>>>>>>>>>>>>>>userCat"+userCat);
		System.out.println("======================>>>>>>>>>>>>>>>>>>>>>回到购物车");
		return "shopping_cart";
	}
	/**
	 * 购物车移除商品
	 * @param oName
	 * @return
	 */
	@RequestMapping("deleteOrder")
	public String deleteOrder(Integer oId) {
		orderService.deleteOrder(oId);
		System.out.println("======================>>>>>>>>>>>>>>>>>>>>>正在删除购物车中的商品");
		return "redirect:/ShoppingCart";
	}
	/**
	 * 购物车中实现批量删除
	 * @param oName
	 * @return
	 */
	@RequestMapping("deleteOrderoId")
	public String deleteOrderName(String orderList) {
		String[] strs =orderList.split(",");
		List<Integer> oId = new ArrayList<>();
		for(int i=0;i<strs.length;i++){
			oId.add(Integer.parseInt(strs[i]));
	    }
	    orderService.deleteAll(oId);
	    System.out.println("======================>>>>>>>>>>>>>>>>>>>>>正在删除多个商品");
		return "";
	}
}
