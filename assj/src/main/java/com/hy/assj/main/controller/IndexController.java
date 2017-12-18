package com.hy.assj.main.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.hy.assj.cmMember.model.CmMemberService;
import com.hy.assj.cmMember.model.CmMemberVO;
import com.hy.assj.member.model.MemberService;
import com.hy.assj.member.model.MemberVO;

@Controller
public class IndexController {

	private static final Logger logger = LoggerFactory.getLogger(IndexController.class);
	
	@Autowired
	private MemberService memberService;
	@Autowired
	private CmMemberService cmMemberService;
	
	@RequestMapping(value="/index.do",method=RequestMethod.GET)
	public String index_get() {
		logger.info("메인페이지 요청");
		
		return "index";
	}
	
	@RequestMapping(value="/index.do",method=RequestMethod.POST)
	public String index_post(@ModelAttribute MemberVO vo,
			@RequestParam(required=false) String chkSaveId,
			HttpServletRequest request, HttpServletResponse response,
			ModelMap model) {
		
		logger.info("로그인 진행");
		
		String msg="";
		String url="/index.do";
		int result=memberService.loginCheck(vo.getMemId(),vo.getMemPwd());
		if(result==MemberService.LOGIN_OK) {
			//로그인 성공
			MemberVO memVo=memberService.selectMember(vo.getMemId());
			
			//[1] 세션에 저장
			HttpSession session=request.getSession();
			/*session.setAttribute("memId", memVo.getMemId());
			session.setAttribute("memName", memVo.getMemName());*/
			session.setAttribute("memberVO", memVo);
			
			
			//[2] 쿠키에 저장
			Cookie ck = new Cookie("ck_userid", memVo.getMemId());
			ck.setPath("/");
			if(chkSaveId!=null) { //아이디 저장하기 체크한 경우, 쿠키 저장
				ck.setMaxAge(1000*24*60*60);
				response.addCookie(ck);
			}else {
				ck.setMaxAge(0);   //쿠키 삭제
				response.addCookie(ck);				
			}
			
			msg=memVo.getMemName()+"님 로그인되었습니다.";
			url="/index.do";
		}else if(result==MemberService.ID_NONE) {
			msg="해당 아이디가 존재하지 않습니다.";
		}else if(result==MemberService.PWD_DISAGREE) {
			msg="비밀번호가 존재하지 않습니다.";
		}else {
			msg="로그인 체크 실패";
		}
	
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		return "common/message";
	}
		
	
	
	@RequestMapping(value="/index2.do",method=RequestMethod.POST)
	public String index_post(@ModelAttribute CmMemberVO vo,
			@RequestParam(required=false) String chkSaveId,
			HttpServletRequest request, HttpServletResponse response,
			ModelMap model) {
		
		logger.info("로그인 진행");
		
		String msg="";
		String url="/index.do";
		
		
		int result=cmMemberService.loginCheck(vo.getCmId(),vo.getCmPwd());
		if(result==CmMemberService.LOGIN_OK) {
			//로그인 성공
			CmMemberVO memVo=cmMemberService.selectMember(vo.getCmId());
			
			//[1] 세션에 저장
			HttpSession session=request.getSession();
			session.setAttribute("cmId", memVo.getCmId());
			session.setAttribute("cmName", memVo.getCmName());
			
			//[2] 쿠키에 저장
			Cookie ck = new Cookie("ck_userid", memVo.getCmId());
			ck.setPath("/");
			if(chkSaveId!=null) { //아이디 저장하기 체크한 경우, 쿠키 저장
				ck.setMaxAge(1000*24*60*60);
				response.addCookie(ck);
			}else {
				ck.setMaxAge(0);   //쿠키 삭제
				response.addCookie(ck);				
			}
			
			msg=memVo.getCmName()+"님 로그인되었습니다.";
			url="/index.do";
		}else if(result==CmMemberService.ID_NONE) {
			msg="해당 아이디가 존재하지 않습니다.";
		}else if(result==CmMemberService.PWD_DISAGREE) {
			msg="비밀번호가 존재하지 않습니다.";
		}else {
			msg="로그인 체크 실패";
		}
	
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		return "common/message";
	}
}
