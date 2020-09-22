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
 * ������ ʵ����ǿ��֪ͨ�����͵Ľӿ�
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
	 * ģ��Ȩ�޼�鷽��
	 */
	@Before("myPoinCut()")
	public void checkPermission() {
		System.out.println("Ȩ�޼��");
	}

	/**
	 * ģ����־��¼����
	 */
	@AfterReturning("myPoinCut()")
	public void log() {
		
		System.out.println("��־��¼        ��ǰʱ��:"+date.getDate());
	}

}
