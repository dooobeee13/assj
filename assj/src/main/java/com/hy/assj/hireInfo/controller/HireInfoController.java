package com.hy.assj.hireInfo.controller;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hy.assj.hireInfo.model.HireInfoService;

@Controller
@RequestMapping("/hireInfo")
public class HireInfoController {

	private static final Logger logger = LoggerFactory.getLogger(HireInfoController.class);
	
	@Autowired
	private HireInfoService hireInfoService;
	
	@RequestMapping("/home.do")
	public String home() {
		logger.info("채용정보 홈 요청");
		
		return "hireInfo/hireInfoHome";
	}
	
	@RequestMapping("/areaList.do")
	public String areaList(Model model) {
		model.addAttribute("map", hireInfoService.getAreaListMap());
		
		return "hireInfo/areaCategory";
	}
	
	
	
}
