package com.hy.assj.member;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/member/menu")
public class MenuController {
	
	private static final Logger logger
	=LoggerFactory.getLogger(MenuController.class);
	
	@RequestMapping(value="/onenone.do",method=RequestMethod.GET)
	public String onenone_get() {
		logger.info("1:1이메일문의 화면");
		
		return "member/menu/onenone";	
	}
	
	@RequestMapping("/psService.do")
	public String psService() {
		logger.info("개인회원 서비스 화면");
		
		return "member/menu/psService";
	}
	
	@RequestMapping("/psService2.do")
	public String psService2() {
		logger.info("취업준비 화면");
		
		return "member/menu/psService2";
	}
	
	@RequestMapping("/psService3.do")
	public String psService3() {
		logger.info("이직준비 화면");
		
		return "member/menu/psService3";
	}
	
}
