package com.hy.assj;

import java.util.List;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hy.assj.recruit.model.HireNotiVO;
import com.hy.assj.recruit.model.RecruitDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"classpath:/config/spring/*.xml"})
public class RecruitDAOTest {
	
	@Autowired
	private RecruitDAO dao;
	
	@Test
	public void selectHireNoti() {
		List<HireNotiVO> list = dao.selectHireNoti(1);
		System.out.println(list);
	}
	
}
