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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hy.assj.TalentManagement.model.TalentManagementService;
import com.hy.assj.TalentManagement.model.TalentManagementVO;

@Controller
public class TalentManagementController {
	private static final Logger logger = LoggerFactory.getLogger(TalentManagementController.class);
	
	@Autowired
	private TalentManagementService tmService;
	
	@RequestMapping(value="/TalentManagement/final-main.do",method=RequestMethod.GET)
	public String Main_get(Model model) {
		TalentManagementVO vo = new TalentManagementVO();
		List<Map<String, Object>> Resumelist = tmService.selectResume(vo);

		model.addAttribute("Resumelist",Resumelist);
		
		return "TalentManagement/final-main";
	}
	
	@RequestMapping(value="/TalentManagement/final-main.do",method=RequestMethod.POST)
	public String Main_post(@RequestParam(required=false) String [] AreaSelectBox ) {
		logger.info("파라미터={}",AreaSelectBox);
		for(int i=0;i<AreaSelectBox.length;i++) {
			logger.info("각각의 벨류={}",AreaSelectBox[i]);
		}
		return "TalentManagement/final-main";
	}
	
	@RequestMapping(value="/TalentManagement/all.do",method=RequestMethod.GET)
	public String all_get(Model model) {
		logger.info("all.do get()메서드 호출");
		
		List<Map<String,Object>> Arealist = tmService.selectArea();
		logger.info("Arealist.size()={}",Arealist);
		
		model.addAttribute("Arealist",Arealist);
		
		return "TalentManagement/all";
	}
	
	@RequestMapping(value="/TalentManagement/all.do",method=RequestMethod.POST)
	public String all_post(Model model) {
		logger.info("all.do post()메서드 호출");
		
		List<Map<String,Object>> Arealist = tmService.selectArea();
		logger.info("Arealist.size()={}",Arealist);
		
		model.addAttribute("Arealist",Arealist);
		
		return "TalentManagement/all";
	}
	
	@RequestMapping(value="/TalentManagement/area.do",method=RequestMethod.GET)
	public String area_get(Model model) {
		logger.info("area.do get()메서드 호출");
		
		List<Map<String,Object>> Arealist = tmService.selectArea();
		logger.info("Arealist.size()={}",Arealist);
		
		model.addAttribute("Arealist",Arealist);
		
		return "TalentManagement/area";
	}
	
	@RequestMapping(value="/TalentManagement/area.do",method=RequestMethod.POST)
	public String area_post(Model model) {
		logger.info("area.do get()메서드 호출");
		
		List<Map<String,Object>> Arealist = tmService.selectArea();
		logger.info("Arealist.size()={}",Arealist);
		
		model.addAttribute("Arealist",Arealist);
		
		return "TalentManagement/area";
	}

	@RequestMapping(value="/TalentManagement/CareerOrOld.do")
	public void CareerOrOld() {
		
	}
	
	@RequestMapping(value="/TalentManagement/education.do",method=RequestMethod.GET)
	public String education_get(Model model) {
		logger.info("education.do get() 메서드 호출");
		List<Map<String,Object>> Edulist = tmService.selectEducation();
		logger.info("Edulist.size()={}",Edulist);
		
		model.addAttribute("Edulist",Edulist);
		
		return "TalentManagement/education";
	}
	
	@RequestMapping(value="/TalentManagement/education.do",method=RequestMethod.POST)
	public String education_post(Model model) {
		logger.info("education.do post() 메서드 호출");
		List<Map<String,Object>> Edulist = tmService.selectEducation();
		logger.info("Edulist.size()={}",Edulist.size());
		
		model.addAttribute("Edulist",Edulist);
		
		return "TalentManagement/education";
		
	}
	
	@RequestMapping(value="/TalentManagement/hopeOccupation.do",method=RequestMethod.GET)
	public String hopeOccupation_get(Model model) {
		logger.info("hopeOccupation.do get() 메서드 호출");
		List<Map<String,Object>> Occulist = tmService.selectOccupation();
		logger.info("Occulist.size()={}",Occulist.size());
		
		model.addAttribute("Occulist",Occulist);
		
		return "TalentManagement/hopeOccupation";
	}
	
	@RequestMapping(value="/TalentManagement/hopeOccupation.do",method=RequestMethod.POST)
	public String hopeOccupation_post(Model model) {
		logger.info("hopeOccupation.do post() 메서드 호출");
		List<Map<String,Object>> Occulist = tmService.selectOccupation();
		logger.info("Occulist.size()={}",Occulist.size());
		
		model.addAttribute("Occulist",Occulist);
		
		return "TalentManagement/hopeOccupation";
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
	
	@RequestMapping(value="/TalentManagement/rank.do",method=RequestMethod.POST)
	public String rank_post(Model model) {
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
	public String sectors_get(Model model) {
		logger.info("sectors.do get() 메서드 호출");
		
		List<Map<String,Object>> Sectorslist = tmService.selectSectors();
		model.addAttribute("Sectorslist",Sectorslist);
		
		return "TalentManagement/sectors";
	}
	
	@RequestMapping(value="/TalentManagement/sectors.do",method=RequestMethod.POST)
	public String sectors_post(Model model) {
		logger.info("sectors.do get() 메서드 호출");
		
		List<Map<String,Object>> Sectorslist = tmService.selectSectors();
		model.addAttribute("Sectorslist",Sectorslist);
		
		return "TalentManagement/sectors";
	}
	
	@RequestMapping(value="/TalentManagement/workingStyle.do",method=RequestMethod.GET)
	public String workingStyle_get(Model model) {
		logger.info("wrokingStyle.do get()메서드 호출");
		List<Map<Integer, String>> empTypelist = tmService.selectEmpType();
		
		logger.info("empTypelist.size()={}",empTypelist);
		
		model.addAttribute("empTypelist",empTypelist);
		
		return "TalentManagement/workingStyle";
		
	}
	@RequestMapping(value="/TalentManagement/workingStyle.do",method=RequestMethod.POST)
	public String workingStyle_post(Model model) {
		logger.info("wrokingStyle.do get()메서드 호출");
		List<Map<Integer, String>> empTypelist = tmService.selectEmpType();
		
		logger.info("empTypelist.size()={}",empTypelist);
		
		model.addAttribute("empTypelist",empTypelist);
		
		return "TalentManagement/workingStyle";
		
	}
	
	/*@RequestMapping(value="/TalentManagement/resume.do",method=RequestMethod.GET)
	public String resume_get(Model model) {
		logger.info("resume.do get()메서드 호출");
		
		List<Map<String, Object>> Resumelist = tmService.selectResume(vo);
		
		logger.info("Resumelist.size()={}",Resumelist.size());
		model.addAttribute("Resumelist",Resumelist);
		
		return "TalentManagement/resume";
	}*/
	
	@RequestMapping(value="/TalentManagement/resume.do",method=RequestMethod.POST)
	public @ResponseBody String resume(@RequestParam String [] EduColDetail) {
		logger.info("EduColDetail={}",EduColDetail);
		
		return "dasf";
	}
	
	@RequestMapping("/TalentManagement/resumed.do")
	public @ResponseBody List<Map<String, Object>> resumde(@RequestParam(required=false) List<String> EduColDetail,//자주 찾는 대학
										@RequestParam(required=false) List<String> Educol,//몇년제 졸업인지
										@RequestParam(required=false) List<String> major,
										@RequestParam(required=false) List<String> position,
										@RequestParam(required=false) List<String> rank,
										@RequestParam(required=false) List<String> empType,
										@RequestParam(required=false) List<String> MiniArea,
										@RequestParam(required=false) List<String> Gender,
										@RequestParam(required=false) List<String> CareerCheckBox,
										@RequestParam(required=false) List<String> HopeOccu,
										@RequestParam(required=false) List<String> area,
										@RequestParam(required=false) List<String> Hopesectors) {
		logger.info("EduColDetail={}, Educol={}",EduColDetail,Educol);
		logger.info("major={}, position={}",major,position);
		logger.info("rank={}, empType={}",rank,empType);
		logger.info("MiniArea={},Gender={}",MiniArea,Gender);
		logger.info("CareerCheckBox={},HopeOccu={}",CareerCheckBox,HopeOccu);
		logger.info("area={},Hopesectors={}",area,Hopesectors);
		
		TalentManagementVO vo = new TalentManagementVO();
		vo.setAREA_TOP_NAME(MiniArea);
		vo.setAREA_NAME(area);
		vo.setCareerCheckBox(CareerCheckBox);
		vo.setEduColDetail(EduColDetail);
		vo.setET_NAME(empType);
		vo.setOCCU_NAME(HopeOccu);
		vo.setPosition(position);
		vo.setRank(rank);
		vo.setRESUME_GENDER(Gender);
		vo.setUniversityType(Educol);
		vo.setSEC_NAME(Hopesectors);
		
		List<Map<String, Object>> Resumelist = tmService.selectResume(vo);

		return Resumelist;
	}
	
	@RequestMapping("/TalentManagement/resumedtwo.do")
	public @ResponseBody String resumdetwo(@RequestParam(required=false) String [] EduColDetail) {
		logger.info("EduColDetail={},={}",EduColDetail[0],EduColDetail[1]);
		
		return "dasf";
	}
}

