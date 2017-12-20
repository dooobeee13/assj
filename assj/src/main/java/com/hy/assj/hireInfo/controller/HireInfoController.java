package com.hy.assj.hireInfo.controller;

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
	
	@RequestMapping("/hireInfohome.do")
	public String home() {
		logger.info("채용정보 홈 요청");
		
		return "hireInfo/hireInfoHome";
	}
	
	@RequestMapping("/areaList.do")
	public String areaList(Model model) {
		model.addAttribute("map", hireInfoService.getAreaListMap());
		
		return "hireInfo/category/areaCategory";
	}
	
	@RequestMapping("/occupationList.do")
	public String occupationList(Model model) {
		model.addAttribute("map", hireInfoService.getOccupationListMap());
		
		return "hireInfo/category/occupationCategory";
	}
	
	@RequestMapping("/majorList.do")
	public String majorList(Model model) {
		model.addAttribute("map", hireInfoService.getMajorListMap());
		
		return "hireInfo/category/majorCategory";
	}
	
	@RequestMapping("/sectorsList.do")
	public String secotrsList(Model model) {
		model.addAttribute("map", hireInfoService.getSectorsListMap());
		
		return "hireInfo/category/sectorsCategory";
	}
	
	@RequestMapping("/rankList.do")
	public String rankList(Model model) {
		model.addAttribute("rankList", hireInfoService.getRankList());
		model.addAttribute("positionList", hireInfoService.getPositionList());
		
		return "hireInfo/category/rankCategory";
	}
	
	@RequestMapping("/compScaleList.do")
	public String compScaleList(Model model) {
		model.addAttribute("csList", hireInfoService.getCompScaleList());		
		model.addAttribute("etList", hireInfoService.getEmpTypeList());
		return "hireInfo/category/compScaleCategory";
	}
	
	@RequestMapping("/educationList.do")
	public String educationList(Model model) {
		model.addAttribute("list", hireInfoService.getEducationList());
		
		return "hireInfo/category/educationCategory";
	}
	
	@RequestMapping("/careerList.do")
	public String careerList(Model model) {
		model.addAttribute("list", hireInfoService.getCareerList());
		
		return "hireInfo/category/careerCategory";
	}
	
	/*@RequestMapping("/empTypeList.do")
	public String empTypeList(Model model) {
		model.addAttribute("list", hireInfoService.getEmpTypeList());
		
		return "hireInfo/category/empTypeCategory";
	}
	
	@RequestMapping("/postionList.do")
	public String postionList(Model model) {
		model.addAttribute("list", hireInfoService.getPositionList());
		
		return "hireInfo/category/postionCategory";
	}*/
	
}
