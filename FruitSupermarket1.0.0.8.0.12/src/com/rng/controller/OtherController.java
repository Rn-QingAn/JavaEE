package com.rng.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rng.entity.AccountFruit;
import com.rng.service.AccountService;

@Controller
public class OtherController {
	@Autowired
	AccountService accountService;
	
	/**
	 * 返回水果管
	 * @return
	 */
	@RequestMapping("Products")
	public String Products() {
		return "Products";
	}
	/**
	 * 返回蔬菜馆
	 * @return
	 */
	@RequestMapping("Vegetables")
	public String Vegetables() {
		return "Vegetables";
	}
	@RequestMapping("user")
	public String user() {
		return "user";
	}
	@RequestMapping("contact")
	public String contact() {
		return "contact";
	}
	
	@RequestMapping("index")
	public String index() {
		return "index";
	}
	
	@RequestMapping("Group_buy")
	public String Group_buy() {
		return "Group_buy";
	}
	@RequestMapping("login")
	public String login() {
		return "login";
	}
	@RequestMapping("manage")
	public String admin() {
		return "manage";
	}
	@RequestMapping("userGoodsManage")
	public String userGoodsManage(HttpSession session) {
		
		return "userGoodsManage";
	}
	@RequestMapping("userOrderManage")
	public String userOrderManage(HttpSession session) {
		String accountName=(String) session.getAttribute("UserName");
		List<AccountFruit> account=accountService.SelectUserAccountFruit(accountName);
		session.setAttribute("ACCOUNT", account);
		return "userOrderManage";
	}
	@RequestMapping("order")
	public String createAccount() {
		return "Orders";
	}
}
