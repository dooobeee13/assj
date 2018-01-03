package com.hy.assj;


import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hy.assj.hirenoti.model.HireNotiDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"classpath:/config/spring/*.xml"})
public class InsertHireNotiTest {
	
	@Autowired
	private HireNotiDAO dao;
	
	
	/*@Test
	public void insertMajor() {
		Map<String, Object> map = new HashMap<>();
		map.put("hnNo", 4);
		map.put("list", Arrays.asList(40, 41, 42, 43));
		dao.insertMajor(map);
	}
	@Test
	public void insertOccu() {
		Map<String, Object> map = new HashMap<>();
		map.put("hnNo", 4);
		map.put("list", Arrays.asList(55, 56));
		dao.insertOccupation(map);
	}
	
	@Test
	public void insertPosition() {
		Map<String, Object> map = new HashMap<>();
		map.put("hnNo", 4);
		map.put("list", Arrays.asList(2));
		dao.insertPosition(map);
	}
	
	@Test
	public void insertSector() {
		Map<String, Object> map = new HashMap<>();
		map.put("hnNo", 4);
		map.put("list", Arrays.asList(28, 29, 30));
		dao.insertSector(map);
	}
	
	@Test
	public void insertEmpType() {
		Map<String, Object> map = new HashMap<>();
		map.put("hnNo", 4);
		map.put("list", Arrays.asList(2, 3, 4));
		dao.insertEmpType(map);
	}*/
	
	@Test
	public void insertRank() {
		Map<String, Object> map = new HashMap<>();
		map.put("hnNo", 4);
		map.put("list", Arrays.asList(5, 6, 7));
		dao.insertRank(map);
	}
	
}
