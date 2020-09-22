package com.rng.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rng.entity.Admin;
import com.rng.entity.Fruit;
import com.rng.service.AdminService;
import com.rng.service.FruitService;
import com.rng.util.MD5;

import jdk.nashorn.internal.ir.RuntimeNode.Request;

@Controller
public class AdminController {
	@Autowired
	AdminService adminService;
	@Autowired
	FruitService fruitService;
	
	/**
	 * 用户登录
	 * 
	 * @param user
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/AdminLogin")
	@ResponseBody
	public String AdminLogin(@RequestBody Admin admin, HttpSession session) {
		String passwordByMd5 = MD5.MD5(admin.getaLoginPwd());
		admin.setaLoginPwd(passwordByMd5);
		System.out.println(admin);
		System.out.println("======================>>>>>>>>>>>>" + admin.getaId());
		if (admin == null) {
			return "";
		} else {
			if (adminService.doLogin(admin)) {
				session.setAttribute("name", admin.aLoginId);
				System.out.println("======================>>>>>>>>>>>>" + admin.aLoginId);
				session.setAttribute("AdminName", adminService.selectAdminName(admin.aLoginId));
				System.out.println("查询请求到Controller这里");
				List<Fruit> fruits =fruitService.getAllFruits();
				System.out.println("查询结果到了:" + fruits.size());
				session.setAttribute("FRUITS", fruits);
				System.out.println("======================>>>>>>>>>>>>>>>>>>>>>商品管理");
				return "ok";
			} else {
				return "";
			}
		}
	}
}
