package com.rng.service;

import java.util.List;



import com.rng.entity.Order;

public interface OrderService {
	/**
	 * ��������ˮ��
	 * @return
	 */
	public List<Order> findAllOrder();
		
	/**
	 * ��������
	 * @param user
	 * @return
	 */
	public int createOrder(Order order);
	
	/**
	 * ͨ��ˮ�����Ʋ��Ҷ���
	 * @param oName
	 * @return
	 */
	public String selectOrderName(String oName);
	
	/**
	 * ˮ��ɾ�� --->��Ʒ�¼�
	 * @param fName
	 * @return
	 */
	public int deleteOrder(Integer oId);  
	
	public void deleteAll(List<Integer> oId);
	
	public List<Order> ByUserCatFuirt(String userCat);
	/**
	 * ��չ��ﳵ
	 * @param oName
	 * @return
	 */
	public int emptyCat(String userCat);

}
