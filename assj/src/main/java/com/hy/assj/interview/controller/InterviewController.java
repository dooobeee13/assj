package com.hy.assj.interview.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Interviews")
public class InterviewController {
	private static final Logger logger = LoggerFactory.getLogger(InterviewController.class);
	
	@RequestMapping("/oncalendar.do")
	public void Interview_cal() {
		
	}
	
	@RequestMapping("/forinterview.do")
	public void Interview_for() {
		
	}
}
