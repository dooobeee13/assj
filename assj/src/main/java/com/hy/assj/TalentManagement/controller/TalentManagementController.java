package com.hy.assj.TalentManagement.controller;

import java.net.URLDecoder;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

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
	
	@RequestMapping(value="/TalentManagement/resumed.do",method=RequestMethod.POST)
	public @ResponseBody List<Map<String, Object>> resumde(@RequestParam(required=false) List<String> EduColDetail,//자주 찾는 대학
										@RequestParam(required=false) List<String> Educol,//몇년제 졸업인지
										@RequestParam(required=false) List<String> major, //전공
										@RequestParam(required=false) List<String> position, //직책
										@RequestParam(required=false) List<String> rank, //직급
										@RequestParam(required=false) List<String> empType, //고용형태
										@RequestParam(required=false) List<String> MiniArea, //간편검색 지역부분
										@RequestParam(required=false) List<String> Gender, //성별
										@RequestParam(required=false) List<String> CareerCheckBox, //경력체크박스
										@RequestParam(required=false) List<String> HopeOccu, //희망직종
										@RequestParam(required=false) List<String> area, //지역
										@RequestParam(required=false) List<String> Hopesectors, //희망 업종
										@RequestParam(required=false) String SalStart,
										@RequestParam(required=false) String SalEnd,
										@RequestParam(required=false) List<String> HopeSalsDesi,
										@RequestParam(required=false) String OldStart,
										@RequestParam(required=false) String OldEnd,
										HttpServletResponse response) {
		if(SalStart=="") {
			SalStart=null;
		}
		if(SalEnd=="") {
			SalEnd=null;
		}
		if(OldStart=="") {
			OldStart=null;
		}
		if(OldEnd=="") {
			OldEnd=null;
		}
		response.setContentType("text/html;charset=UTF-8");
		logger.info("EduColDetail={}, Educol={}",EduColDetail,Educol);
		logger.info("major={}, position={}",major,position);
		logger.info("rank={}, empType={}",rank,empType);
		logger.info("MiniArea={},Gender={}",MiniArea,Gender);
		logger.info("CareerCheckBox={},HopeOccu={}",CareerCheckBox,HopeOccu);
		logger.info("area={},Hopesectors={}",area,Hopesectors);
		logger.info("SalStart={},SalEnd={}",SalStart,SalEnd);
		logger.info("HopeSalsDesi={},",HopeSalsDesi);
		logger.info("OldStart={},OldEnd={}",OldStart,OldEnd);
		TalentManagementVO vo = new TalentManagementVO();
		vo.setAreaTopName(MiniArea);//
		vo.setAreaName(area);//
		vo.setCareerCheckBox(CareerCheckBox);
		vo.setEduColDetail(EduColDetail);
		vo.setEtName(empType);//
		vo.setOccuName(HopeOccu);//
		vo.setPosition(position);
		vo.setRank(rank);
		vo.setResumeGender(Gender);//
		vo.setUniversityType(Educol);
		vo.setSecName(Hopesectors);//
		vo.setMajor(major);
		vo.setSalStart(SalStart);
		vo.setSalEnd(SalEnd);
		vo.setHopeSalsDesi(HopeSalsDesi);
		vo.setOldEnd(OldEnd);
		vo.setOldStart(OldStart);
		
		List<Map<String, Object>> Resumelist = tmService.selectResume(vo);
		logger.info("Resumelist 결과 size()={}",Resumelist.size());

		return Resumelist;
	}
}

