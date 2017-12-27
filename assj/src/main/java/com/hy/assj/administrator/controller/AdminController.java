package com.hy.assj.administrator.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.hy.assj.administrator.model.AdminService;
import com.hy.assj.common.FileuploadUtil;
import com.hy.assj.vo.NewsVO;

@Controller
@RequestMapping("/administrator")
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@Autowired
	private FileuploadUtil fileUtil;
	
	@Autowired
	private AdminService adminService;
	
	@RequestMapping("/adminmain.do")
	public void AdminMain() {
		logger.info("admin 페이지");
	}
	
	@RequestMapping(value="/news/updatenews.do",method=RequestMethod.GET)
	public String updateNews() {
		
		
		return "administrator/news/updatenews";
	}
	@RequestMapping(value="/news/insertNews.do",method=RequestMethod.POST)
	public String insertNews(HttpServletRequest res, @ModelAttribute NewsVO vo, Model model) {
		

		String fileName="";
		
		try {
			
			fileName = fileUtil.fileupload2(res, FileuploadUtil.IMAGE_UPLOAD);
			
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		if(fileName==null) {
			fileName=" ";
		}

		vo.setNewsURL(fileName);
		vo.setNewsWriter("뉴스관리자");
		
		int cnt = adminService.insertNews(vo);
		logger.info("뉴스 등록 결과 cnt={}",cnt);
		
		String msg = "", url="/administrator/news/updatenews.do";
		
		if(cnt>0) {
			msg="공채 뉴스 등록 성공";
		}else {
			msg="공채 뉴스 등록 실패";
		}
		
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		return "common/message";
		
	}
}
