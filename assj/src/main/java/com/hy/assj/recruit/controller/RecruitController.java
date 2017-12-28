package com.hy.assj.recruit.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/recruit")
public class RecruitController {

	private static final Logger logger = LoggerFactory.getLogger(RecruitController.class);
	
	@RequestMapping("/recruitDetail.do")
	public String recruitDetail() {
		
		return "hireInfo/recruit";
	}
	
}
