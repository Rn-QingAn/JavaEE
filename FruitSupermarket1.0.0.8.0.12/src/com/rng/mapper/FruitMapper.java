package com.rng.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.rng.entity.Fruit;

/**
 * @author 
 */

public interface FruitMapper {
	
	/**
	 * 查找所有水果
	 * @return
	 */
	@Select("SELECT * FROM  fruits")
	public List<Fruit> findAll();
	
	/**
	 * 水果下架
	 * @param fName
	 * @return
	 */
	@Delete("delete from fruits where fId=#{fId};")
	public int deleteBook(Integer fId);
	
	/**
	 * 水果上架
	 * @param addFruit
	 * @return
	 */
	@Insert("INSERT INTO fruits(fImage,fName,fType,fPlace,introduction,fPrice,fNumber)  VALUES(#{fImage},#{fName},#{fType},#{fPlace},#{introduction},#{fPrice},#{fNumber})")
	public int addFruit(Fruit addFruit);
	
	/**
	 * 水果通过姓名进行更新
	 * @param fruit
	 * @return
	 */
	@Update("update fruits set fType=#{fType},fPlace=#{fPlace},introduction=#{introduction},fPrice=#{fPrice},fNumber=#{fNumber} where fName=#{fName}")
	public boolean update(Fruit fruit);
	

	/**
	 * 通过名称查找水果集合
	 * @return
	 */
	@Select("SELECT * FROM  fruits where fName=#{fName}")
	public List<Fruit> findFruitByName(String fName);
	
	
	/**
	 * 通过产地模糊产地
	 * @param x
	 * @return
	 */
	@Select("select * from fruits where fPlace like concat('%',#{fPlace},'%')")
	public List<Fruit> selectAllFruit(String fPlace);
	
	/**
	 * 在所有水果页 ，通过名字进行模糊
	 * @param fName
	 * @return
	 */
	@Select("select * from fruits where fName like concat('%',#{fName},'%')")
	public List<Fruit> selectByName(String fName);
}
