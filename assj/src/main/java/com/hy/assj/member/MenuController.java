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
}
