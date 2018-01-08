package com.hy.assj.interview.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hy.assj.interview.model.InterviewService;

@Controller
@RequestMapping("/Interviews")
public class InterviewController {
	private static final Logger logger = LoggerFactory.getLogger(InterviewController.class);
	
	@Autowired
	private InterviewService interService;
	
	@RequestMapping("/oncalendar.do")
	public void Interview_cal(Model model) {
		List<Map<String, Object>> list = interService.selectCalendar(3);

		logger.info("면접 대상자 list.size()={}",list.size());
		
		model.addAttribute("list",list);
	}
	
	@RequestMapping(value="/forinterview.do",method=RequestMethod.GET)
	public String Interview_for(Model model ) {
		List<Map<String, Object>> list = interService.selectInview(3);
		logger.info("interview 결과 list.size()={}",list.size());
		model.addAttribute("list",list);
		
		return "Interviews/forinterview";
	}
	
	//면접 등록 미니 페이지
	@RequestMapping("/interviewdate.do")
	public void InterSelect(Model model) {
		List<Map<String, Object>> list = interService.selectByHireNotice(3);
		logger.info("면접 등록 페이지 면접명 결과 list.size()={}",list.size());
		
		model.addAttribute("list",list);
		
	}
	
	@RequestMapping("/empSupMember.do")
	public @ResponseBody List<Map<String, Object>> empSupMember(@RequestParam(defaultValue="0") int hnNo){
		List<Map<String, Object>> list = interService.selectEmpSupbyHN(hnNo);
		logger.info("면접자 명 결과 list.size()={}",list.size());
		
		return list;
	}
	
	@Transactional
	@RequestMapping("/insertInterview.do")
	public String InsertInterview(/*@RequestParam String notiTitle, //면접명
								@RequestParam String interviewMember, //면접대상의 HN_NO 
								@RequestParam String interviewKinds, //면접 종류
								@RequestParam String startDay, //면접 시작일
								@RequestParam String endDay, //면접 종료일
								@RequestParam String location, //면접 장소
								@RequestParam String remarks
								,@RequestParam String interviewer*/
								@RequestParam Map<String, Object> map,
								@RequestParam(defaultValue="0") int success,Model model) { //비고
		/*Map<String, Object> map = new HashMap<>();
		map.put("NOTITITLE", notiTitle);
		map.put("INTERVIEWMEMBER", interviewMember);
		map.put("INTERVIEWKINDS", interviewKinds);
		map.put("STARTDAY", startDay);
		map.put("ENDDAY", endDay);
		map.put("LOCATION", location);
		map.put("REMARKS", remarks);*/
		
		logger.info("면접 내용 적용하기 파라미터={}",map);
		int cnt = interService.insertInterview(map);
		String msg="", url="/Interviews/interviewdate.do";
		if(cnt>0) {
			int InterResult = interService.updateInterviewerStatus(map);
			if(InterResult>0) {
				msg="면접 등록 성공";
				url="/Interviews/interviewdate.do?success=1";
			}else {
				msg="면접 등록 실패";
			}
		}else {
			msg="면접 등록 실패";
		}
		
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		return "common/message";
	}
}
