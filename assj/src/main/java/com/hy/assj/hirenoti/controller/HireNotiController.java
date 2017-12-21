package com.hy.assj.hirenoti.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/hire_noti")
public class HireNotiController {
	private static final Logger logger = LoggerFactory.getLogger(HireNotiController.class);
	
	@RequestMapping(value="/hire1.do", method=RequestMethod.GET)
	public String hireNoti1() {
		
		logger.info("공고 등록 정보");
		
		return "hire_noti/hire1";
	}
	
	@RequestMapping(value="/hire2.do", method=RequestMethod.GET)
	public String hireNoti2() {
		logger.info("공고 지원자 관리");
		
		return "hire_noti/hire2";
		
	}
}
