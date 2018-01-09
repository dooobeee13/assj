package com.hy.assj.freeboard.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.hy.assj.resume.controller.ResumeController;

@Controller
@RequestMapping("/board")
public class FreeBoardController {

	private static final Logger logger = LoggerFactory.getLogger(ResumeController.class);
	
	@RequestMapping("/freeBoardList.do")
	public String freeBoardList() {
		return "board/freeBoard/freeBoardList";
	}
	
	@RequestMapping(value="/freeBoardWrite.do", method=RequestMethod.GET)
	public String freeBoardWrite_Get() {
		return "board/freeBoard/freeBoardWrite";
	}
	




	
}
