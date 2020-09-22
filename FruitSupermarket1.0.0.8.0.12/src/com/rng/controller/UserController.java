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
 * @author ������
 *
 */
@Controller
public class UserController {
	@Autowired
	UsersService usersService;

	/**
	 * �첽��֤�û����Ƿ��ѱ�ע�ᣬ��֤�û�����Ψһ��
	 * 
	 * @param users
	 * @return
	 */
	@RequestMapping(value = "/checkuser", method = RequestMethod.POST)
	@ResponseBody
	public String checkName(@RequestBody Users users) {
		// �����û�����ѯ�Ƿ���ڸ��û���
		Users user = usersService.checkName(users.getLoginId());
		// ������Ϊ�գ�˵���û�������
		System.out.println(user);
		System.out.println("======================>>>>>>>>>>>>>>>>>>>>>������֤�û��Ƿ����");
		if (user == null) {
			System.out.println("======================>>>>>>>>>>>>>>>>>>>>>������");
			return "ok";
		} else {
			System.out.println("======================>>>>>>>>>>>>>>>>>>>>>���û��ѱ�ע��");
			return "";
		}

	}

	/**
	 * �û���¼
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
	 * �����˳�ҳ��
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
		System.out.println("======================>>>>>>>>>>>>>>>>>>>>>�˳��˺�");
		return "login";
	}

	/**
	 * �û�ע��
	 * 
	 * @param user
	 * @return
	 */
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	@ResponseBody
	public String register(@RequestBody Users user) {
		System.out.println("����ע�� ����Ϊ:=======>>>>>>" + user.getName());
		String passwordByMd5 = MD5.MD5(user.getLoginPwd());
		user.setLoginPwd(passwordByMd5);
		System.out.println(user);
		System.out.println("�������ڼ���=====>>>>" + passwordByMd5);
		// У���Ƿ��ѱ�ע��
		Users users = usersService.checkName(user.getLoginId());
		if (user == null) {
			return "";
		} else {
			if (users != null) {

				System.out.println("======================>>>>>>>>>>>>>>>>>>>>>����У���Ƿ��ѱ�ע��");
				return "";
			} else {
				if (usersService.register(user)) {
					System.out.println("======================>>>>>>>>>>>>>>>>>>>>>ע��ɹ�");
					System.out.println("======================>>>>>>>>>>>>>>>>>>>>>����ע��");
					return "ok";
				} else {
					System.out.println("======================>>>>>>>>>>>>>>>>>>>>>ע��ʧ��");
					return "";
				}
			}
		}
	}

	/**
	 * �û��޸�����
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
			System.out.println("======================>>>>>>>>>>>>>>>>>>>>>�޸ĳɹ�");
			return "login";
		} else {
			System.out.println("======================>>>>>>>>>>>>>>>>>>>>>�޸�ʧ��");
			return "User_Password";
		}
	}
}
