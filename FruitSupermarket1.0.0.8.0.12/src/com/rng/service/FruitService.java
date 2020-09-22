package com.rng.service;

import java.util.List;

import com.rng.entity.Fruit;

public interface FruitService {
	/**
	 *查询所有水果信息
	 * @return
	 */
	public List<Fruit>   getAllFruits();      
	/**
	 * 水果删除 --->商品下架
	 * @param fName
	 * @return
	 */
	public int deletefName(Integer fId);   
	/**
	 * 商品添加
	 * @param addFruit
	 * @return
	 */
	public int addFruits(Fruit addFruit);
	/**
	 * 水果信息更新
	 * @param fruit
	 * @return
	 */
	public boolean updateFruit(Fruit fruit);
	
	/**
	 * 通过名称查找水果集合
	 * @return
	 */
	public List<Fruit> ByNameGetFruits(String fName);
	
	/**
	 * 通过产地模糊查询
	 * @param fPlace
	 * @return
	 */
	public List<Fruit> selectAllFruit(String fPlace);
	
	/**
	 * 在所有水果页 ，通过名字进行模糊
	 * @param fName
	 * @return
	 */
	public List<Fruit> selectByName(String fName);
}
