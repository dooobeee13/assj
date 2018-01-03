package com.hy.assj;

import java.util.Arrays;
import java.util.List;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hy.assj.recruit.model.RHireNotiVO;
import com.hy.assj.recruit.model.RMemberVO;
import com.hy.assj.recruit.model.RScrapVO;
import com.hy.assj.recruit.model.RSearchValue;
import com.hy.assj.recruit.model.RecruitDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"classpath:/config/spring/*.xml"})
public class RecruitDAOTest {
	
	@Autowired
	private RecruitDAO dao;
	
	/*@Test
	public void selectHireNoti() {
		List<RHireNotiVO> list = dao.selectHireNotiByHnNo(2);
		System.out.println(list);
	}*/
	
	/*@Test
	public void selectHireNotiBySearchValue() {
		RSearchValue searchValue = new RSearchValue();
		//searchValue.setAddrList(Arrays.asList("서울","전국","인천"));
		searchValue.setOccuList(Arrays.asList(15, 24, 38));
		searchValue.setAreaList(Arrays.asList(42, 43));
		searchValue.setTopAreaList(Arrays.asList(3));
		searchValue.setCareerList(Arrays.asList(1,2));
		searchValue.setCsList(Arrays.asList(1));
		searchValue.setEtList(Arrays.asList(1,2));
		searchValue.setHnExpyearMin(5);
		
		List<RHireNotiVO> list = dao.selectHireNotiBySearchValue(searchValue);
		System.out.println(list);
		System.out.println("list size:" + list.size());
	}*/
	
	/*@Test
	public void selectMemberInfo() {
		RMemberVO vo = dao.selectMemberInfo(1);
		System.out.println(vo);
	}*/
	
	/*@Test
	public void insertScrap() {
		RScrapVO vo = new RScrapVO();
		vo.setHnNo(3);
		vo.setMemNo(1);
		int cnt = dao.insertScrap(vo);
		System.out.println("insert scrap 결과 : " + cnt);
	}*/
	
	@Test
	public void deleteScrap() {
		RScrapVO vo = new RScrapVO();
		vo.setHnNo(3);
		vo.setMemNo(1);
		int cnt = dao.deleteScrap(vo);
		System.out.println("delete scrap 결과 : " + cnt);
	}
	
}
