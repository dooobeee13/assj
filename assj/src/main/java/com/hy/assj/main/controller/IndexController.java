package com.hy.assj.main.controller;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hy.assj.cmMember.model.CmMemberService;
import com.hy.assj.cmMember.model.CmMemberVO;
import com.hy.assj.hireInfo.model.HireInfoService;
import com.hy.assj.member.model.MemberService;
import com.hy.assj.member.model.MemberVO;
import com.hy.assj.vo.AreaVO;
import com.hy.assj.vo.OccupationVO;

@Controller
public class IndexController {

	private static final Logger logger = LoggerFactory.getLogger(IndexController.class);
	
	@Autowired
	private MemberService memberService;
	@Autowired
	private CmMemberService cmMemberService;
	@Inject
	private HireInfoService hireInfoService;
	
	@RequestMapping(value="/index.do",method=RequestMethod.GET)
	public String index_get() {
		logger.info("메인페이지 요청(get)");
		
		return "index";
	}
	
	@RequestMapping(value="/index.do",method=RequestMethod.POST)
	public String index_post(@ModelAttribute MemberVO vo,
			@RequestParam(required=false) String chkSaveId,
			HttpServletRequest request, HttpServletResponse response,
			ModelMap model) {
		
		logger.info("메인페이지 요청(post)개인회원-로그인 진행");
		
		String msg="";
		String url= request.getHeader("referer"); //진행하는 페이지로 url설정
		int result=memberService.loginCheck(vo.getMemId(),vo.getMemPwd());
		if(result==MemberService.LOGIN_OK) {
			//로그인 성공
			MemberVO memberVO=memberService.selectMember(vo.getMemId());
			
			//[1] 세션에 저장
			HttpSession session=request.getSession();


			/*session.setAttribute("memId", memVo.getMemId());
			session.setAttribute("memName", memVo.getMemName());*/
			session.setAttribute("memberVO", memberVO);
			

			session.setAttribute("memberVO", memberVO);

			
			//[2] 쿠키에 저장
			Cookie ck = new Cookie("ck_memId", memberVO.getMemId());
			ck.setPath("/");
			if(chkSaveId!=null) {   //아이디 저장하기 체크한 경우, 쿠키 저장
				ck.setMaxAge(1000*24*60*60);
				response.addCookie(ck);
			}else {
				ck.setMaxAge(0);   //쿠키 삭제
				response.addCookie(ck);				
			}
			
			msg=memberVO.getMemName()+"님 로그인되었습니다.";
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
			@RequestParam(required=false) String chkSaveId2,
			HttpServletRequest request, HttpServletResponse response,
			ModelMap model) {
		
		logger.info("메인페이지 요청(post)기업회원-로그인 진행");
		
		String msg="";
		String url="/index.do";
		
		
		int result=cmMemberService.loginCheck(vo.getCmId(),vo.getCmPwd());
		if(result==CmMemberService.LOGIN_OK) {
			//로그인 성공
			CmMemberVO cmMemberVO=cmMemberService.selectMember(vo.getCmId());
			
			//[1] 세션에 저장
			HttpSession session=request.getSession();
	
			session.setAttribute("cmMemberVO", cmMemberVO);
			
			//[2] 쿠키에 저장
			Cookie ck = new Cookie("ck_cmId", cmMemberVO.getCmId());
			ck.setPath("/");
			if(chkSaveId2!=null) { //아이디 저장하기 체크한 경우, 쿠키 저장
				ck.setMaxAge(1000*24*60*60);
				response.addCookie(ck);
			}else {
				ck.setMaxAge(0);   //쿠키 삭제
				response.addCookie(ck);				
			}
			
			msg=cmMemberVO.getCmName()+"님 로그인되었습니다.";
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
	

	
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		logger.info("로그아웃 처리");
		
		session.removeAttribute("memberVO");//session 삭제
	
		return "redirect:/index.do";
	}
	
	@RequestMapping("/logout2.do")
	public String logout2(HttpSession session) {
		logger.info("로그아웃 처리");
		
		session.removeAttribute("cmMemberVO");
		
		return "redirect:/index.do";
	}
	
	@RequestMapping("/login/naverLogin.do")
	@ResponseBody
	public String naverLogin(HttpSession session) {
		String state = NaverLogin.generateState();
		session.setAttribute("state", state);
		return NaverLogin.getApiURL(state);
	}
	
	@RequestMapping("/login/naverCallback.do")
	public String naverLoginCallBack(@RequestParam String state,
			@RequestParam(value="code", required=false) String code,
			@RequestParam(value="error", required=false) String error,
			@RequestParam(value="error_description", required=false) String errorDescription,
			HttpSession session) {
		String sessionState = (String)session.getAttribute("state");
		//System.out.println("state = " + sessionState + "="+  state + "/code = " + code + "/error = " + error + "/error_description = " + errorDescription);

		Map<String, String> resultMap = null;
		if (state.equals(sessionState)) {
			resultMap = NaverLogin.getRequestKey(sessionState, code);
			session.setAttribute("access_token", resultMap.get("access_token"));
			session.setAttribute("refresh_token", resultMap.get("refresh_token"));
			session.setAttribute("token_type", resultMap.get("token_type"));
			
			resultMap = NaverLogin.requestUserInfo(resultMap.get("access_token"));
			MemberVO vo = memberService.naverLogin(resultMap);
			session.setAttribute("memberVO", vo);
		} else {
			System.out.println("상태키 검증 에러");
		}
		
		return "redirect:/index.do";
	}
	
	@RequestMapping("/index/navOccuCategory.do")
	public String navOccuCategory(Model model) {
		Map<String, List<OccupationVO>> map = hireInfoService.getOccupationListMap();
		model.addAttribute("map", map);
		return  "index/cateOccu";
	}
	
	@RequestMapping("/index/navAreaCategory.do")
	public String navAreaCategory(Model model) {
		Map<String, List<AreaVO>> map = hireInfoService.getAreaListMap();
		model.addAttribute("map", map);
		return  "index/cateArea";
	}
	
	
}
