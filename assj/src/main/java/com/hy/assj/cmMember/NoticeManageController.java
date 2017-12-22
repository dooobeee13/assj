package com.hy.assj.cmMember;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/noticeManagement")
public class NoticeManageController {
	private static final Logger logger
	=LoggerFactory.getLogger(NoticeManageController.class);
	
	@RequestMapping(value="/noticeManage.do",method=RequestMethod.GET)
	public String noticeManage_get() {
		logger.info("공고 관리페이지(get)");
		
		return "noticeManagement/noticeManage";
	}
}








