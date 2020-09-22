package com.rng.controller;

import java.util.Enumeration;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rng.entity.Users;
import com.rng.service.UsersService;
import com.rng.util.MD5;

/**
 * 
 * @author 任文祥
 *
 */
@Controller
public class UserController {
	@Autowired
	UsersService usersService;

	/**
	 * 异步验证用户名是否已被注册，验证用户名的唯一性
	 * 
	 * @param users
	 * @return
	 */
	@RequestMapping(value = "/checkuser", method = RequestMethod.POST)
	@ResponseBody
	public String checkName(@RequestBody Users users) {
		// 根据用户名查询是否存在该用户名
		Users user = usersService.checkName(users.getLoginId());
		// 当对象不为空，说明用户名存在
		System.out.println(user);
		System.out.println("======================>>>>>>>>>>>>>>>>>>>>>正在验证用户是否存在");
		if (user == null) {
			System.out.println("======================>>>>>>>>>>>>>>>>>>>>>不存在");
			return "ok";
		} else {
			System.out.println("======================>>>>>>>>>>>>>>>>>>>>>该用户已被注册");
			return "";
		}

	}

	/**
	 * 用户登录
	 * 
	 * @param user
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	@ResponseBody
	public String doLogin(@RequestBody Users user, HttpSession session) {
		String passwordByMd5 = MD5.MD5(user.getLoginPwd());
		user.setLoginPwd(passwordByMd5);
		System.out.println(user);
		System.out.println("======================>>>>>>>>>>>>" + user.getLoginId());
		if (user == null) {
			return "";
		} else {
			if (usersService.doLogin(user)) {
				session.setAttribute("name", user.getLoginId());
				System.out.println("======================>>>>>>>>>>>>" + user.getLoginId());
				session.setAttribute("UserName", usersService.selectUserName(user.getLoginId()));
				return "ok";
			} else {
				return "";
			}
		}
	}

	/**
	 * 用于退出页面
	 * 
	 * @param request
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "tologout", method = RequestMethod.GET)
	public String tologout(HttpServletRequest request, HttpSession session) {
		session.invalidate();
		Enumeration em = request.getSession().getAttributeNames();
		while (em.hasMoreElements()) {
			request.getSession().removeAttribute(em.nextElement().toString());
		}
		System.out.println("======================>>>>>>>>>>>>>>>>>>>>>退出账号");
		return "login";
	}

	/**
	 * 用户注册
	 * 
	 * @param user
	 * @return
	 */
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	@ResponseBody
	public String register(@RequestBody Users user) {
		System.out.println("正在注册 姓名为:=======>>>>>>" + user.getName());
		String passwordByMd5 = MD5.MD5(user.getLoginPwd());
		user.setLoginPwd(passwordByMd5);
		System.out.println(user);
		System.out.println("密码正在加密=====>>>>" + passwordByMd5);
		// 校验是否已被注册
		Users users = usersService.checkName(user.getLoginId());
		if (user == null) {
			return "";
		} else {
			if (users != null) {

				System.out.println("======================>>>>>>>>>>>>>>>>>>>>>正在校验是否已被注册");
				return "";
			} else {
				if (usersService.register(user)) {
					System.out.println("======================>>>>>>>>>>>>>>>>>>>>>注册成功");
					System.out.println("======================>>>>>>>>>>>>>>>>>>>>>可以注册");
					return "ok";
				} else {
					System.out.println("======================>>>>>>>>>>>>>>>>>>>>>注册失败");
					return "";
				}
			}
		}
	}

	/**
	 * 用户修改密码
	 * 
	 * @param user
	 * @return
	 */
	@RequestMapping(value = "/updatePwd", method = RequestMethod.POST)
	public String updatePwd(Users user) {
		String passwordByMd5 = MD5.MD5(user.getLoginPwd());
		String NewPwd = MD5.MD5(user.getReLoginPwd());
		user.setLoginPwd(passwordByMd5);
		user.setReLoginPwd(NewPwd);
		if (usersService.updatePwd(user)) {
			System.out.println("======================>>>>>>>>>>>>>>>>>>>>>修改成功");
			return "login";
		} else {
			System.out.println("======================>>>>>>>>>>>>>>>>>>>>>修改失败");
			return "User_Password";
		}
	}
}
