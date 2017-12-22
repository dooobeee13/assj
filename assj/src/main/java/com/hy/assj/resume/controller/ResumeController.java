package com.hy.assj.resume.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping("/resume")
public class ResumeController {
	private static final Logger logger = LoggerFactory.getLogger(ResumeController.class);
	
	@RequestMapping(value="/resumeProfile.do", method=RequestMethod.GET)
	public String resumeProfile_get() {
		logger.info("이력서 사진 등록 페이지 보여주기");
		return "resume/profileImg/profileImg";
	}
	
	@RequestMapping(value="/resumeInsert.do", method=RequestMethod.GET)
	public void resumeInsert_get() {
		logger.info("이력서 등록 페이지 보여주기");
		// 이력서 등록시 필요할 정보 - 대학에서 지역(area) 큰 지역 , 전공(major) 
		// 희망근무조건 - 고용형태(emp_type) , 지역(area)  , 직종 , 업종  모두 세부카테고리 까지
		// 각 테이블 참조하는 DAO 2 Service 2 생성 주입 , get 방식으로 데이터 넘김
		
	}
	
	@RequestMapping("/test.do")
	public String test() {
		return "";
	}
}
