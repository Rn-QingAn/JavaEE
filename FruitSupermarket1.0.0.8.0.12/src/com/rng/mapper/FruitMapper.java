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
	 * ��������ˮ��
	 * @return
	 */
	@Select("SELECT * FROM  fruits")
	public List<Fruit> findAll();
	
	/**
	 * ˮ���¼�
	 * @param fName
	 * @return
	 */
	@Delete("delete from fruits where fId=#{fId};")
	public int deleteBook(Integer fId);
	
	/**
	 * ˮ���ϼ�
	 * @param addFruit
	 * @return
	 */
	@Insert("INSERT INTO fruits(fImage,fName,fType,fPlace,introduction,fPrice,fNumber)  VALUES(#{fImage},#{fName},#{fType},#{fPlace},#{introduction},#{fPrice},#{fNumber})")
	public int addFruit(Fruit addFruit);
	
	/**
	 * ˮ��ͨ���������и���
	 * @param fruit
	 * @return
	 */
	@Update("update fruits set fType=#{fType},fPlace=#{fPlace},introduction=#{introduction},fPrice=#{fPrice},fNumber=#{fNumber} where fName=#{fName}")
	public boolean update(Fruit fruit);
	

	/**
	 * ͨ�����Ʋ���ˮ������
	 * @return
	 */
	@Select("SELECT * FROM  fruits where fName=#{fName}")
	public List<Fruit> findFruitByName(String fName);
	
	
	/**
	 * ͨ������ģ������
	 * @param x
	 * @return
	 */
	@Select("select * from fruits where fPlace like concat('%',#{fPlace},'%')")
	public List<Fruit> selectAllFruit(String fPlace);
	
	/**
	 * ������ˮ��ҳ ��ͨ�����ֽ���ģ��
	 * @param fName
	 * @return
	 */
	@Select("select * from fruits where fName like concat('%',#{fName},'%')")
	public List<Fruit> selectByName(String fName);
}
