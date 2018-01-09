package com.hy.assj.cmMember;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hy.assj.cmMember.model.CmMemberService;
import com.hy.assj.cmMember.model.CmMemberVO;



@Controller
@RequestMapping("/member/register")
public class CmRegisterController {
	
	private static final Logger logger
	=LoggerFactory.getLogger(CmRegisterController.class);
	
	@Autowired
	private CmMemberService cmMemberService;
	
	@RequestMapping(value="/cmRegister.do",method=RequestMethod.POST)
	public String cmRegister_post(@ModelAttribute CmMemberVO vo,Model model) {
		
		logger.info("회원가입 화면(post) 파라미터 vo={} ", vo);
		
		if(vo.getCmLogo()==null) {
			vo.setCmLogo("");
		}
		int result=cmMemberService.insertCmMemMember(vo);
		
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
}
