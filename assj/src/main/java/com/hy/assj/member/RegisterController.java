package com.hy.assj.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.hy.assj.member.model.MemberService;
import com.hy.assj.member.model.MemberVO;

@Controller
@RequestMapping("/member/register")
public class RegisterController {

	private static final Logger logger
	=LoggerFactory.getLogger(RegisterController.class);
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value="/register.do",method=RequestMethod.GET)
	public String register_get() {
		logger.info("회원가입 화면(get)");
		
		return "member/register/register";
	}
	
	@RequestMapping(value="/register.do",method=RequestMethod.POST)
	public String register_post(@ModelAttribute MemberVO vo ,Model model) {
		
		logger.info("회원가입 화면(post) 파라미터 vo={} ", vo);
		
		int result=memberService.insertMemMember(vo);
		
		String msg="",url="index";
		if(result>0) {
			msg="회원가입 성공했습니다.";
		}else {
			msg="회원가입에 실패했습니다.";
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
	}
	
	
	@RequestMapping("/dupli.do")
	public String dupli_post(@RequestParam String dupliId, Model model) {
		logger.info("아이디중복 확인 화면,파라미터 dupliId={}",dupliId);
		
		boolean result = memberService.duplicationId(dupliId);
		System.out.println("중복검사 결과:" + result);
		model.addAttribute("result", result);
		
		return "member/register/idcheck";
	}
}
