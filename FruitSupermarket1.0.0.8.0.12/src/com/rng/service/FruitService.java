package com.rng.service;

import java.util.List;

import com.rng.entity.Fruit;

public interface FruitService {
	/**
	 *��ѯ����ˮ����Ϣ
	 * @return
	 */
	public List<Fruit>   getAllFruits();      
	/**
	 * ˮ��ɾ�� --->��Ʒ�¼�
	 * @param fName
	 * @return
	 */
	public int deletefName(Integer fId);   
	/**
	 * ��Ʒ���
	 * @param addFruit
	 * @return
	 */
	public int addFruits(Fruit addFruit);
	/**
	 * ˮ����Ϣ����
	 * @param fruit
	 * @return
	 */
	public boolean updateFruit(Fruit fruit);
	
	/**
	 * ͨ�����Ʋ���ˮ������
	 * @return
	 */
	public List<Fruit> ByNameGetFruits(String fName);
	
	/**
	 * ͨ������ģ����ѯ
	 * @param fPlace
	 * @return
	 */
	public List<Fruit> selectAllFruit(String fPlace);
	
	/**
	 * ������ˮ��ҳ ��ͨ�����ֽ���ģ��
	 * @param fName
	 * @return
	 */
	public List<Fruit> selectByName(String fName);
}
