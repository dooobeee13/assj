package com.hy.assj.mypage;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hy.assj.member.model.MemberVO;
import com.hy.assj.resume.controller.ResumeController;

@Controller
public class MyPageController {

	private static final Logger logger = LoggerFactory.getLogger(ResumeController.class);
	
	@RequestMapping("/mypageMain.do")
	public String mypageMain(HttpSession session) {
		logger.info("마이페이지 바로가기");
		
		return "mypage/mypageMain";
	}
	
}
