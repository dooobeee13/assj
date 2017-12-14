package com.hy.assj.hirenoti;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/hire_noti")
public class HireNotiController {
	private static final Logger logger = LoggerFactory.getLogger(HireNotiController.class);
	
	@RequestMapping(value="/saramin.do", method=RequestMethod.GET)
	public String hireNoti() {
		
		logger.info("공고 등록 정보");
		
		return "hire_noti/saramin";
	}
}
