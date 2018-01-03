package com.hy.assj.interview.controller;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hy.assj.interview.model.InterviewService;

@Controller
@RequestMapping("/Interviews")
public class InterviewController {
	private static final Logger logger = LoggerFactory.getLogger(InterviewController.class);
	
	@Autowired
	private InterviewService interService;
	
	@RequestMapping("/oncalendar.do")
	public void Interview_cal() {
		
	}
	
	@RequestMapping(value="/forinterview.do",method=RequestMethod.GET)
	public String Interview_for(Model model ) {
		List<Map<String, Object>> list = interService.selectInview(3);
		logger.info("interview 결과 list.size()={}",list.size());
		model.addAttribute("list",list);
		
		return "Interviews/forinterview";
	}
	
	@RequestMapping("/interviewdate.do")
	public void InterSelect() {
		
	}
}
