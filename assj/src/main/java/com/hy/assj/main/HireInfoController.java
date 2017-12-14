package com.hy.assj.main;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/hireInfo")
public class HireInfoController {

	private static final Logger logger = LoggerFactory.getLogger(HireInfoController.class);
	
	@RequestMapping("/home.do")
	public String home() {
		logger.info("채용정보 홈 요청");
		
		return "hireInfo/hireInfoHome";
	}
	
}
