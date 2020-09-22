package com.rng.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.rng.entity.Fruit;
import com.rng.mapper.FruitMapper;
import com.rng.service.FruitService;
@Service("FruitService")
public class FruitServiceImpl implements FruitService {

	@Autowired
	FruitMapper fruitDao;
	
	@Override
	public List<Fruit> getAllFruits() {
		// TODO Auto-generated method stub
		return fruitDao.findAll();
	}

	@Override
	public int deletefName(Integer fName) {
		// TODO Auto-generated method stub
		return fruitDao.deleteBook(fName);
	}

	@Override
	public int addFruits(Fruit addFruit) {
		// TODO Auto-generated method stub
		return fruitDao.addFruit(addFruit);
	}

	@Override
	public boolean updateFruit(Fruit fruit) {
		// TODO Auto-generated method stub
		return fruitDao.update(fruit);
	}

	@Override
	public List<Fruit> ByNameGetFruits(String fName) {
		// TODO Auto-generated method stub
		return fruitDao.findFruitByName(fName);
	}

	@Override
	public List<Fruit> selectAllFruit(String fPlace) {
		// TODO Auto-generated method stub
		return fruitDao.selectAllFruit(fPlace);
	}

	@Override
	public List<Fruit> selectByName(String fName) {
		// TODO Auto-generated method stub
		return fruitDao.selectByName(fName);
	}

}
