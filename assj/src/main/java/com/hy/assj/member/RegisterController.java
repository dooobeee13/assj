package com.hy.assj.member;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	public String register_post(@ModelAttribute MemberVO vo) {
		logger.info("회원가입 화면(post)");
		
		int result=memberService.insertMemMember(vo);
		
		String msg="",url="index";
		if(result>0) {
			msg="회원가입 성공했습니다.";
		}else {
			msg="회원가입에 실패했습니다.";
		}
		
		return "index";
		
	}
}
