package com.hy.assj.administrator.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
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
import org.springframework.web.servlet.ModelAndView;

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
	public void AdminMain(Model model) {
		
	}
	
	@RequestMapping(value="/news/updatenews.do",method=RequestMethod.GET)
	public String updateNews() {
		
		
		return "administrator/news/updatenews";
	}
	
	@RequestMapping(value="/news/insertNews.do",method=RequestMethod.POST)
	public String insertNews(@ModelAttribute NewsVO vo,HttpServletRequest request, Model model,HttpSession session) {
		

		String fileName="";
		
		try {
			
			fileName = fileUtil.fileupload2(request, FileuploadUtil.NEWS_IMAGE);
			logger.info("fileName={}",fileName);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		if(fileName==null) {
			fileName=" ";
		}

		vo.setNewsUrl(fileName);
		vo.setNewsWriter("뉴스관리자");
		logger.info("vo  결과 ={}",vo);
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
	
	@RequestMapping(value="/news/newsList.do",method=RequestMethod.GET)
	public String newsList(Model model){
		List<Map<String,Object>> list = adminService.selectNews();
		logger.info("뉴스 리스트 조회 결과, list.size()={}",list.size());
		
		model.addAttribute("list",list);
		
		return "administrator/news/newsList";
	}
	
	@RequestMapping(value="/news/newsEdit.do",method=RequestMethod.POST)
	public String updateNews(@ModelAttribute NewsVO vo, Model model) {
		logger.info("뉴스 내용 수정, 파라미터 NewsVO={}",vo);
		
		int cnt = adminService.updateNews(vo);
		String msg="",url="/administrator/news/newsList.do";
		if(cnt>0) {
			msg="뉴스 수정 성공";
		}else {
			msg="뉴스 수정 실패";
		}
		
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		return "common/message";
	}
	
	@RequestMapping(value="/news/newsDelete.do",method=RequestMethod.GET)
	public String updateDelete(@RequestParam(defaultValue="0") int newsNo, Model model) {
		logger.info("뉴스 삭제, 파라미터 newsNo={}",newsNo);
		
		int cnt = adminService.deleteNews(newsNo);
		String msg="",url="/administrator/news/newsList.do";
		if(cnt>0) {
			msg="뉴스 삭제 성공";
		}else {
			msg="뉴스 삭제 실패";
		}
		
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		return "common/message";
	}
	
	@RequestMapping(value="/login/adminlogin.do",method=RequestMethod.GET)
	public void adminLogin() {
		
	}
	
	@RequestMapping(value="/login/adminlogin.do",method=RequestMethod.POST)
	public String adminLogin_post(HttpSession session,@RequestParam String userid, @RequestParam String pwd, Model model) {
		logger.info("관리자 로그인 페이지, 파라미터 userid={}, pwd={}",userid,pwd);
		int cnt = adminService.selectAdminLogin(userid, pwd);
		String url="/administrator/login/adminlogin.do", msg="";
		
		if(cnt==AdminService.LOGIN_OK) {
			url="/administrator/adminmain.do";
			msg="로그인 성공";
			session.setAttribute("adminid", userid);
		}else if(cnt==AdminService.NOT_EXITST) {
			msg="존재하지 않는 아이디입니다.";
		}else if(cnt==AdminService.PWD_DISAGREE) {
			msg="비밀번호가 맞지 않습니다.";
		}else {
			msg="데이터 베이스 오류";
		}
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		return "common/message";
	}
	
	@RequestMapping(value="/login/createadmin.do",method=RequestMethod.GET)
	public void createAdmin() {
		
	}
	
	@RequestMapping(value="/login/createadmin.do",method=RequestMethod.POST)
	public String createAdmin_post(@RequestParam String userid, @RequestParam String pwd, @RequestParam String name, Model model) {
		logger.info("관리자 생성 페이지 파라미터 userid={}, pwd={}",userid,pwd);
		logger.info("name={}",name);
		
		Map<String, Object> list = new HashMap<String, Object>();
		list.put("userid", userid);
		list.put("pwd", pwd);
		list.put("name", name);
		logger.info("list 파라미터={}",list);
		
		int cnt = adminService.CreateAdmin(list);
		String msg="", url="/administrator/login/createadmin.do?success="+1;
		if(cnt>0) {
			msg="관리자 생성 성공";
		}else {
			msg="관리자 생성 실패";
			url="/administrator/createadmin.do";
		}
		
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		return "common/message";
	}
	
	@RequestMapping(value="/adminChat.do",method=RequestMethod.POST)
	public @ResponseBody int insertChat(@RequestParam String content, @RequestParam String userid) {
		logger.info("파라미터 content={}, userid={}",content,userid);
		
		Map<String, Object> list = new HashMap<>();
		list.put("userid", userid);
		list.put("content", content);
		
		int cnt = adminService.insertChat(list);
		
		return cnt;
	}
	
	@RequestMapping(value="/LastChat.do",method=RequestMethod.POST)
	public @ResponseBody List<Map<String, Object>> selectLastChat(@RequestParam(defaultValue="0") int lastNo){
		
		List<Map<String, Object>> lastList = adminService.selectByLastChatNo(lastNo);
		logger.info("마지막 채팅기록으로부터 나온 다음 채팅 결과 lastList.size()={}",lastList.size());
		
		return lastList;
	}
	
	@RequestMapping(value="/firstChatList.do",method=RequestMethod.GET)
	public @ResponseBody List<Map<String, Object>> FirstChatList(){
		logger.info("admin 페이지");
		List<Map<String, Object>> chatlist =  adminService.selectLastChat();
		logger.info("마지막 채팅의 20개까지 셀렉, 결과={}",chatlist.size());
		
		return chatlist;
	}
	
	
}
