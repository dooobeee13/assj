package com.hy.assj;

import java.util.HashMap;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hy.assj.member.model.MemberDAO;
import com.hy.assj.member.model.MemberVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"classpath:/config/spring/*.xml"})
public class SnsLogInDAOTest {
	
	@Autowired
	private MemberDAO dao;
	
	/*@Test
	public void select() {
		Map<String, String> map = new HashMap<>();
		map.put("id", "1111");
		map.put("type", "naver");
		
		int result = dao.countMemberBySns(map);
		System.out.println("찾은 개수: " + result);
	}
	
	@Test
	public void insert() {
		MemberVO vo = new MemberVO();
		vo.setMemName("이름");
		vo.setMemEmail("이메일");
		vo.setMemGender("남자");
		vo.setMemSnsType("naver");
		vo.setMemSnsId("1111");
		vo.setMemPhoto("사진");
		int count = dao.insertMemberBySns(vo);
		System.out.println("입력 결과:" + count);
	}*/
	
	@Test
	public void selectMemberVo() {
		Map<String, String> map = new HashMap<>();
		map.put("id", "1111");
		map.put("type", "naver");
		
		System.out.println(dao.selectMemberBySns(map));
	}
	
	
	
}
