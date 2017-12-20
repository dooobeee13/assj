package com.hy.assj.member;


import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hy.assj.cmMember.model.CmMemberService;
import com.hy.assj.cmMember.model.CmMemberVO;
import com.hy.assj.member.model.MemberService;
import com.hy.assj.member.model.MemberVO;
import com.ibatis.sqlmap.engine.scope.SessionScope;

@Controller
@RequestMapping("/member")
public class RegisterController {

	private static final Logger logger
	=LoggerFactory.getLogger(RegisterController.class);
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private CmMemberService cmMemberService;
	
	@RequestMapping(value="/register/register.do",method=RequestMethod.GET)
	public String register_get() {
		logger.info("회원가입 화면(get)");
		
		return "member/register/register";
	}
	
	@RequestMapping(value="/register/register.do",method=RequestMethod.POST)
	public String register_post(@ModelAttribute MemberVO vo ,Model model) {
		
		logger.info("회원가입 화면(post) 파라미터 vo={} ", vo);
		
		int result=memberService.insertMemMember(vo);
		
		String msg="",url="/index.do";
		if(result>0) {
			msg="회원가입 성공했습니다.";
		}else {
			msg="회원가입에 실패했습니다.";
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
	}
	
	
	@RequestMapping("/register/dupli.do")
	@ResponseBody
	public String dupli_post(@RequestParam String dupliId, Model model) {
		logger.info("아이디중복 확인 화면,파라미터 dupliId={}",dupliId);
		
		boolean result = memberService.duplicationId(dupliId);
		System.out.println("중복검사 결과:" + result);
		/*model.addAttribute("result", result);
		
		return "member/register/idcheck";*/
		return String.valueOf(result);
	}
	
	
	@RequestMapping("/out/psMemOut.do")
	public String memberOut_get() {
		logger.info("개인회원탈퇴 화면(get)");
		
		return "member/out/psMemOut";
	}
	
	@RequestMapping(value="/out/psMemOut2.do",method=RequestMethod.GET)
	public String memberOut2_get() {
		logger.info("개인회원탈퇴2 화면(get)");
		
		return "member/out/psMemOut2";
	}
	
	@RequestMapping(value="/out/psMemOut2.do",method=RequestMethod.POST)
	public String memberOut2_post(@RequestParam String memPwd,
			HttpSession session, HttpServletResponse response,
			Model model) {
		logger.info("개인회원탈퇴2 화면(post)");
		
		MemberVO vo= (MemberVO) session.getAttribute("memberVO");				
		logger.info("회원탈퇴 처리, 파라미터 memId={},pwd={}", vo.getMemId(),memPwd);
		
		//로그인 체크
		String msg="", url="/member/out/psMemOut2.do";
		int result=memberService.loginCheck(vo.getMemId(), memPwd);
		if(result==MemberService.LOGIN_OK) {
			int cnt=memberService.memberOut(vo.getMemId());
			logger.info("회원탈퇴 결과,cnt{}",cnt);
			if(cnt>0) {
				msg="회원탈퇴처리되었습니다.";
				url="/index.do";
				
				//session 정보 제거
				session.invalidate();
				
				//cookie 삭제
				Cookie ck=new Cookie("ck_memId", vo.getMemId());
				ck.setPath("/");
				ck.setMaxAge(0);  //쿠키 삭제
				response.addCookie(ck);		
			}else {
				msg="회원탈퇴 실패";				
			}
		}else if(result==MemberService.PWD_DISAGREE) {
			msg="비밀번호가 일치하지 않습니다";
		}else {
			msg="비밀번호 체크 실패";
		}
		
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		return "common/message";
	}
	
	
	@RequestMapping("/out/cmMemOut.do")
	public String cmMemberOut_get() {
		logger.info("기업회원탈퇴 화면(get)");
		
		return "member/out/cmMemOut";
	}
	
	@RequestMapping(value="/out/cmMemOut2.do",method=RequestMethod.GET)
	public String cmMemberOut2_get() {
		logger.info("기업회원탈퇴 화면(get)");
		
		return "member/out/cmMemOut2";
	}
	
	
	@RequestMapping(value="/out/cmMemOut2.do",method=RequestMethod.POST)
	public String cmMemberOut2_post(@RequestParam String cmPwd,
			HttpSession session, HttpServletResponse response,
			Model model) {
		logger.info("기업회원탈퇴2 화면(post)");
		
		CmMemberVO cMvo= (CmMemberVO) session.getAttribute("cmMemberVO");				
		logger.info("회원탈퇴 처리, 파라미터 cmId={},cmPwd={}", cMvo.getCmId(),cmPwd);
		
		//로그인 체크
		String msg="", url="/member/out/cmMemOut2.do";
		int result=cmMemberService.loginCheck(cMvo.getCmId(), cmPwd);
		if(result==CmMemberService.LOGIN_OK) {
			int cnt=cmMemberService.cmMemberOut(cMvo.getCmId());
			logger.info("회원탈퇴 결과,cnt{}",cnt);
			if(cnt>0) {
				msg="회원탈퇴처리되었습니다.";
				url="/index.do";
				
				//session 정보 제거
				session.invalidate();
				
				//cookie 삭제
				Cookie ck=new Cookie("ck_memId", cMvo.getCmId());
				ck.setPath("/");
				ck.setMaxAge(0);  //쿠키 삭제
				response.addCookie(ck);		
			}else {
				msg="회원탈퇴 실패";				
			}
		}else if(result==MemberService.PWD_DISAGREE) {
			msg="비밀번호가 일치하지 않습니다";
		}else {
			msg="비밀번호 체크 실패";
		}
		
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		return "common/message";
	}
	
	
	
	
	
	
	@RequestMapping(value="/edit/psMemEdit.do",method=RequestMethod.GET)
	public String memberEdit_get(){
		logger.info("개인회원정보 수정 화면(get)");
		return "member/edit/psMemEdit";
	}
	@RequestMapping(value="/edit/psMemEdit.do",method=RequestMethod.POST)
	public String memberEdit_post(@RequestParam String memPwd,
			HttpSession session,Model model){
		logger.info("개인회원정보 수정 화면(post)");
		
		MemberVO vo=(MemberVO) session.getAttribute("memberVO");				
		logger.info("회원수정 전에  비밀번호 확인, 파라미터 memId={},pwd={}", vo.getMemId(),memPwd);
		
		//로그인 체크
		String msg="", url="/member/edit/psMemEdit.do";
		int result=memberService.loginCheck(vo.getMemId(), memPwd);
		if(result==MemberService.LOGIN_OK) {
			url="/member/edit/psMemEdit2.do";
		}else if(result==MemberService.PWD_DISAGREE) {
			msg="비밀번호가 일치하지 않습니다";
		}else {
			msg="비밀번호 체크 실패";
		}
		
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		return "common/message";	
	}
	@RequestMapping(value="/edit/psMemEdit2.do",method=RequestMethod.GET)
	public String memberEdit2_get(HttpSession session,Model model){
		logger.info("개인회원정보 수정2 화면(get)");
			
		return "member/edit/psMemEdit2";
	}
	
	@RequestMapping(value="/edit/psMemEdit2.do",method=RequestMethod.POST)
	public String memberEdit2_post(){
		logger.info("개인회원정보 수정2 화면(post)");
		
		return "member/edit/psMemEdit2";
	}
	
	
	
	@RequestMapping(value="/edit/cmMemEdit.do",method=RequestMethod.GET)
	public String cmMemberEdit_get() {
		logger.info("기업회원정보 수정 화면(get)");
		
		return "member/edit/cmMemEdit";
	}
	
	@RequestMapping(value="/login/psMemLogin.do",method=RequestMethod.GET)
	public String psMemLogin_get() {
		logger.info("개인회원 로그인 화면(get)");
		
		return "member/login/psMemLogin";
	}
	
}
