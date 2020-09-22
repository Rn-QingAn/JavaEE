package com.rng.aspect;

import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.rng.controller.UserController;
import com.rng.service.UsersService;
import com.rng.util.getDate;

/**
 * 切面类 实现增强（通知）类型的接口
 * 
 * @author 
 *
 */
@Aspect
@Component
public class MyAspect {
	getDate date=new getDate();
	
	
	@Pointcut("execution(* com.rng.service.impl.*.*(..))")
	private void myPoinCut() {
	}
	/**
	 * 模拟权限检查方法
	 */
	@Before("myPoinCut()")
	public void checkPermission() {
		System.out.println("权限检查");
	}

	/**
	 * 模拟日志记录方法
	 */
	@AfterReturning("myPoinCut()")
	public void log() {
		
		System.out.println("日志记录        当前时间:"+date.getDate());
	}

}
