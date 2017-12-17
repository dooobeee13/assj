package com.hy.assj;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hy.assj.hireInfo.model.AreaVO;
import com.hy.assj.hireInfo.model.CareerVO;
import com.hy.assj.hireInfo.model.CompScaleVO;
import com.hy.assj.hireInfo.model.EducationVO;
import com.hy.assj.hireInfo.model.EmpTypeVO;
import com.hy.assj.hireInfo.model.HireInfoDAO;
import com.hy.assj.hireInfo.model.MajorVO;
import com.hy.assj.hireInfo.model.OccupationVO;
import com.hy.assj.hireInfo.model.PositionVO;
import com.hy.assj.hireInfo.model.RankVO;
import com.hy.assj.hireInfo.model.SectorsVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"classpath:/config/spring/*.xml"})
public class HireInfoDAOTest {
	
	@Autowired
	private HireInfoDAO dao;
	
	@Test
	public void selectList() {
//		List<AreaVO> list = dao.selectArea();
//		List<CareerVO> list = dao.selectCareer();
//		List<CompScaleVO> list = dao.selectCompScale();
//		List<EducationVO> list = dao.selectEducation();
//		List<EmpTypeVO> list = dao.selectEmpType();
//		List<MajorVO> list = dao.selectMajor();
//		List<OccupationVO> list = dao.selectOccupation();
//		List<PositionVO> list = dao.selectPosition();
//		List<RankVO> list = dao.selectRank();
		List<SectorsVO> list = dao.selectSectors();
		printList(list);
		printSize(list);
	}
	
	@SuppressWarnings("rawtypes")
	private void printSize(List list) {
		System.out.println("리스트 사이즈 : " + list.size());
	}
	
	@SuppressWarnings("rawtypes")
	private void printList(List list) {
		for (Object obj : list) {
			System.out.println(obj);
		} 
	}
	
}