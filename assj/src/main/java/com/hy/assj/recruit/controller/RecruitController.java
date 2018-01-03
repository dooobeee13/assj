package com.hy.assj.recruit.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hy.assj.member.model.MemberVO;
import com.hy.assj.recruit.model.RHireNotiVO;
import com.hy.assj.recruit.model.RMemberVO;
import com.hy.assj.recruit.model.RecruitService;

@Controller
@RequestMapping("/recruit")
public class RecruitController {

	private static final Logger logger = LoggerFactory.getLogger(RecruitController.class);
	
	@Autowired
	private RecruitService recruitService;
	
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
		model.addAttribute("vo", hireNotiVo);
		
		return "hireInfo/recruit";
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
	
}
