package com.hy.assj.TalentManagement.controller;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hy.assj.TalentManagement.model.TalentManagementService;

@Controller
public class TalentManagementController {
	private static final Logger logger = LoggerFactory.getLogger(TalentManagementController.class);
	
	@Autowired
	private TalentManagementService tmService;
	
	@RequestMapping(value="/TalentManagement/final-main.do",method=RequestMethod.GET)
	public String Main() {
		return "TalentManagement/final-main";
	}
	
	@RequestMapping(value="/TalentManagement/all.do")
	public void all() {
		
	}
	
	@RequestMapping(value="/TalentManagement/area.do")
	public void area() {
		
	}
	
	@RequestMapping(value="/TalentManagement/CareerOrOld.do")
	public void CareerOrOld() {
		
	}
	
	@RequestMapping(value="/TalentManagement/education.do")
	public void education() {
		
	}
	
	@RequestMapping(value="/TalentManagement/hopeOccupation.do")
	public void hopeOccupation() {
		
	}
	
	@RequestMapping(value="/TalentManagement/rank.do",method=RequestMethod.GET)
	public String rank_get(Model model) {
		logger.info("rank.do get() 메서드 호출");
		
		List<Map<Integer, String>> Ranklist = tmService.selectRank();
		logger.info("rank.do List.size={}",Ranklist.size());
		
		List<Map<Integer, String>> Positionlist = tmService.selectPosition();
		logger.info("Positionlist.size={}",Positionlist.size());
		
		model.addAttribute("Ranklist",Ranklist);
		model.addAttribute("Positionlist",Positionlist);
		
		return "TalentManagement/rank";
	}
	
	@RequestMapping(value="/TalentManagement/sectors.do",method=RequestMethod.GET)
	public void sectors(Model model) {
		logger.info("");
	}
	
	@RequestMapping(value="/TalentManagement/workingStyle.do",method=RequestMethod.GET)
	public String workingStyle(Model model) {
		logger.info("wrokingStyle.do get()메서드 호출");
		List<Map<Integer, String>> empTypelist = tmService.selectEmpType();
		logger.info("empTypelist.size()={}",empTypelist);
		
		model.addAttribute("empTypelist",empTypelist);
		
		return "TalentManagement/workingStyle";
		
	}
	
	@RequestMapping(value="/TalentManagement/resume.do")
	public void resume() {
		
	}
}

