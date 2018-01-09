package com.hy.assj.recruit.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hy.assj.cmMember.model.HireNotiWithEsAndResumeVO;
import com.hy.assj.hireNotiManagement.model.ApplicantStatByHnDTO;
import com.hy.assj.hireNotiManagement.model.HireNotiManagementService;
import com.hy.assj.member.model.MemberVO;
import com.hy.assj.recruit.model.RHireNotiVO;
import com.hy.assj.recruit.model.RMemberVO;
import com.hy.assj.recruit.model.RecruitService;
import com.hy.assj.resume.model.ResumeService;

@Controller
@RequestMapping("/recruit")
public class RecruitController {

	private static final Logger logger = LoggerFactory.getLogger(RecruitController.class);
	
	@Autowired
	private RecruitService recruitService;
	
	@Autowired
	private ResumeService resumeService;
	
	@Autowired
	private HireNotiManagementService hnManageService;
	
	@RequestMapping("/recruitDetail.do")
	public String recruitDetail(int hnNo, Model model, HttpSession session) {
		logger.info("채용공고 상세보기 요청 파라미터 hnNo = {}", hnNo);
		
		MemberVO memberVo = (MemberVO) session.getAttribute("memberVO");
		if (memberVo != null) {
			RMemberVO memberInfo = recruitService.getMemberInfo(memberVo.getMemNo());
			session.setAttribute("memberInfo", memberInfo);
			logger.info("memberInfo 가져옴 = {}", memberInfo);
		}
		
		RHireNotiVO hireNotiVo = recruitService.recruitDetail(hnNo);
		HireNotiWithEsAndResumeVO hnWithEsResumeVo = hnManageService.getHireNotiByhnNo(hnNo);
		ApplicantStatByHnDTO dto = hnManageService.calStats(hnWithEsResumeVo);
		model.addAttribute("vo", hireNotiVo);
		model.addAttribute("dto", dto);
		
		return "recruit/recruitDetail";
	}
	
	@RequestMapping("/addScrap.do")
	@ResponseBody
	public String addScrap(int hnNo, HttpSession session) {
		logger.info("스크랩 추가 요청 hnNo = {}", hnNo);
		RMemberVO memberInfo = (RMemberVO) session.getAttribute("memberInfo");
		return recruitService.addScrap(memberInfo, hnNo);
	}
	
	@RequestMapping("/deleteScrap.do")
	@ResponseBody
	public String deleteScrap(int hnNo, HttpSession session) {
		logger.info("스크랩 해제 요청 hnNo = {}", hnNo);
		RMemberVO memberInfo = (RMemberVO) session.getAttribute("memberInfo");
		return recruitService.deleteScrap(memberInfo, hnNo);
	}
	
	@RequestMapping(value = "/apply.do", method = RequestMethod.GET)
	public String apply(HttpSession session, Model model) {
		MemberVO memberVo = (MemberVO) session.getAttribute("memberVO");
		if (memberVo == null) {
			model.addAttribute("message", RecruitService.REQUIRED_LOGIN); 
		} else {
			model.addAttribute("list", resumeService.selectAllMyResume(memberVo.getMemNo())); 
		}
		
		return "recruit/myResume";
	}
	
	@RequestMapping(value = "/apply.do", method = RequestMethod.POST)
	@ResponseBody
	public String apply(int hnNo, int resumeNo, HttpSession session, Model model) {
		MemberVO memberVo = (MemberVO) session.getAttribute("memberVO");
		if (memberVo == null) {
			return RecruitService.REQUIRED_LOGIN; 
		} else {
			Map<String, Integer> empSupMap = new HashMap<>();
			empSupMap.put("hnNo", hnNo);
			empSupMap.put("resumeNo", resumeNo);
			empSupMap.put("memNo", memberVo.getMemNo());
			return recruitService.apply(empSupMap);
		}
	}
	
	@RequestMapping("/deleteApply.do")
	@ResponseBody
	public String deleteApply(int hnNo, HttpSession session) {
		logger.info("지원한 공고 취소 요청 hnNo = {}", hnNo);
		RMemberVO memberInfo = (RMemberVO) session.getAttribute("memberInfo");
		return recruitService.deleteApply(memberInfo, hnNo);
	}
	
}
