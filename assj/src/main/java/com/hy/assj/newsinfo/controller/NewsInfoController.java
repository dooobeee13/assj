package com.hy.assj.newsinfo.controller;

import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hy.assj.administrator.model.AdminService;
import com.hy.assj.vo.NewsVO;

@Controller
public class NewsInfoController {
	private static final Logger logger = LoggerFactory.getLogger(NewsInfoController.class);
	
	@Autowired
	private AdminService adminService;
	
	@RequestMapping(value="/newsInfo/newsmain.do",method=RequestMethod.GET)
	public String newsMain(Model model) {
		List<Map<String, Object>> list = adminService.selectNews();
		
		model.addAttribute("list",list);
		logger.info("뉴스 목록 결과 list.size()={}",list.size());
		return "newsInfo/newsmain";
	}
	
	@RequestMapping("/newsInfo/newsdata.do")
	@ResponseBody
	public NewsVO newsdata(@RequestParam("newsNo") int newsNo,@RequestParam(defaultValue="0") int EditNo) {
		logger.info("뉴스 상세보기 파라미터={}",newsNo);
		NewsVO vo = adminService.selectByNo(newsNo);
		if(EditNo==0) {
			vo.setNewsContent(vo.getNewsContent().replaceAll(" ","&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>"));			
		}
		logger.info("뉴스 목록 결과 list.size()={}",vo);

		return vo;
		
	}
}

