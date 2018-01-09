package com.hy.assj;

import java.util.HashMap;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hy.assj.cmMember.model.CmMemberDAO;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"classpath:/config/spring/*.xml"})
public class CmMemberDAOTest {
	
	@Autowired
	private CmMemberDAO dao;
	
	@Test
	public void getHireNoti() {
		//System.out.println(dao.selectHireNotiByHnNo(1));
		//System.out.println(dao.selectHireNotiByCmNo(1));
		//dao.updateEmpSup(5, "불합격");
		System.out.println(dao.selectlatestHnNo(1));
	}
	
}
