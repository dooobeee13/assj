package com.hy.assj.notice.controller;

import java.io.File;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.parsing.ParsingException;
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

import com.hy.assj.common.PaginationInfo;
import com.hy.assj.common.SearchVO;
import com.hy.assj.common.Utility;
import com.hy.assj.hirenoti.model.HireNotiListVO;
import com.hy.assj.hirenoti.model.HireNotiVO;
import com.hy.assj.notice.model.NotiSearchVO;
import com.hy.assj.notice.model.NoticeListVO;
import com.hy.assj.notice.model.NoticeService;
import com.hy.assj.notice.model.NoticeVO;
import com.hy.assj.reboard.model.ReboardService;

@Controller
@RequestMapping("/member/menu")
public class NoticeController {
	private static final Logger logger
		=LoggerFactory.getLogger(NoticeController.class);
	
	@Autowired
	private NoticeService noticeService;
	
	@Autowired
	private ReboardService reboardService;
	
	@RequestMapping(value="/notice.do",method=RequestMethod.GET)
	public String notice_get(@ModelAttribute SearchVO searchVo, Model model) {
		logger.info("공지사항 화면,searchVo={}",searchVo);
		return "member/menu/notice";	
	}
	
	@RequestMapping("/step.do")
	public String step(@ModelAttribute NotiSearchVO searchVo, Model model) {
		logger.info("step 화면 notiNo={}", searchVo.getNotititleNo());
		
		//Paging 처리에 필요한 변수를 계산해주는 PaginationInfo 생성
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(Utility.BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(Utility.RECORD_COUNT_PER_PAGE);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
				
		//SearchVo에 값 셋팅
		searchVo.setRecordCountPerPage(Utility.RECORD_COUNT_PER_PAGE);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		logger.info("searchVo 최종값 : {}", searchVo);
		logger.info("pagingInfo currentPage : {}", pagingInfo.getCurrentPage());
		
		List<Map<String,Object>> list=noticeService.noticeList(searchVo);
		
		logger.info("list size: {}",  list.size());
		
		pagingInfo.setTotalRecord(noticeService.selectTotalRecordCount(searchVo));
		
		model.addAttribute("list", list);
		model.addAttribute("pagingInfo", pagingInfo);
		
		return "member/menu/step1";
	}
	
	@RequestMapping("/step2.do")
	public String step2_get(@ModelAttribute NotiSearchVO searchVo, Model model) {
		logger.info("step2 화면 notiNo={}", searchVo.getNotititleNo());
		
		//Paging 처리에 필요한 변수를 계산해주는 PaginationInfo 생성
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(Utility.BLOCK_SIZE);
		//pagingInfo.setRecordCountPerPage(Utility.RECORD_COUNT_PER_PAGE);
		pagingInfo.setRecordCountPerPage(8);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
				
		//SearchVo에 값 셋팅
		//searchVo.setRecordCountPerPage(Utility.RECORD_COUNT_PER_PAGE);
		searchVo.setRecordCountPerPage(8);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		logger.info("searchVo 최종값 : {}", searchVo);
		logger.info("pagingInfo currentPage : {}", pagingInfo.getCurrentPage());
		
		List<Map<String,Object>> list=noticeService.noticeList(searchVo);
		
		logger.info("list size: {}",  list.size());
		
		pagingInfo.setTotalRecord(noticeService.selectTotalRecordCount(searchVo));
		
		model.addAttribute("list", list);
		model.addAttribute("pagingInfo", pagingInfo);
		
		return "member/menu/step2";
	}
	
	@RequestMapping("/countUpdate.do")
	public String countUpdate(@RequestParam(defaultValue="0") int no,
			Model model) {
		logger.info("조회수 증가, 파라미터 no={}", no);
		
		if(no==0) {
			model.addAttribute("msg", "잘못된 url입니다.");
			model.addAttribute("url", "/member/menu/notice.do");
			
			return "common/message";
		}
		
		int cnt = noticeService.updateReadCount(no);
		logger.info("조회수 증가 결과, cnt={}", cnt);
		
		return "redirect:/member/menu/noticeDetail.do?no="+no;
	}
	
	@RequestMapping("/AdminCountUpdate.do")
	public String AdminCountUpdate(@RequestParam(defaultValue="0") int no,
			Model model) {
		logger.info("Admin 공지사항 상세보기, 파라미터 no={}", no);
		
	/*	if(no==0) {
			model.addAttribute("msg", "잘못된 url입니다.");
			model.addAttribute("url", "/member/menu/notice.do");
			
			return "common/message";
		}
		
		int cnt = noticeService.updateReadCount(no);
		logger.info("조회수 증가 결과, cnt={}", cnt);*/
		
		return "redirect:/member/menu/AdminNoticeDetail.do?no="+no;
	}
	
	@RequestMapping("/noticeDetail.do")
	public String noticeDetail_get(@RequestParam(defaultValue="0") int no,
			HttpServletRequest request,	ModelMap model) {
		logger.info("상세보기 파라미터 no={}", no);
		
		Map<String,Object> map =noticeService.selectByNo(no);
		Map<String,Object> nexPre=noticeService.nextprev(no);
		
		logger.info("상세보기 결과, map={}", map);

		model.addAttribute("map", map);
		model.addAttribute("nexPre", nexPre);

		return "member/menu/noticeDetail";
	}
	
	@RequestMapping("/AdminNoticeDetail.do")
	public String noticeDetail2_get(@RequestParam(defaultValue="0") int no,
			HttpServletRequest request,	ModelMap model) {
		logger.info("admin 상세보기 파라미터 no={}", no);
		
		Map<String,Object> map =noticeService.selectByNo(no);
		Map<String,Object> nexPre=noticeService.nextprev(no);
		
		logger.info("상세보기 결과, map={}", map);

		model.addAttribute("map", map);
		model.addAttribute("nexPre", nexPre);

		return "member/menu/noticeDetail2";
	}
	
	@RequestMapping("/serviceCenter.do")
	public String serviceCenter(Model model) {
		logger.info("고객센터 화면");
		
		List<Map<String, Object>>list =noticeService.noticeRownum();
		List<Map<String, Object>>qlist=reboardService.QnaRownum();
		
		logger.info("고객센터 공지사항 리스트 list{}",list);
		logger.info("고객센터 Q&A 리스트 qlist{}",qlist);
		
		model.addAttribute("list",list);
	    model.addAttribute("qlist",qlist);	

		return "member/menu/serviceCenter";
	}
	
	
	@RequestMapping(value="/noticeWrite.do",method=RequestMethod.GET)
	public String noticeWrite_get() {
		logger.info("공지사항 글쓰기");
		
		return "member/menu/noticeWrite";
	}
	
	@RequestMapping(value="/noticeEditOut.do",method=RequestMethod.GET)
	public String noticeEditOut_get(Model model) {
		logger.info("공지사항 수정,삭제(get)");	
		return "member/menu/noticeEditOut";
	}
	
	@RequestMapping(value="/noticeWrite.do",method=RequestMethod.POST)
	public String noticeWrite_post(@ModelAttribute NoticeVO noticeVO,Model model) {
		logger.info("공지사항 글쓰기(post) 파라미터 NoticeVo={}",noticeVO);
		
		int cnt=noticeService.insertNotice(noticeVO);
		
		String msg="공지사항 등록 실패",url="/member/menu/noticeEditOut.do";
		if(cnt>0){
			msg="공지사항 등록 성공";
		}
		
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		return "common/message";
	}
	
	@RequestMapping(value="/noticeEdit.do",method=RequestMethod.GET)
	public String noticeEdit_get(@RequestParam int no,Model model) {
		logger.info("공지사항 수정화면 파라미터 no={}",no);
		
		Map<String, Object> map=noticeService.selectByNo(no);
		logger.info("map={}",map);
		
		model.addAttribute("map",map);
		
		return "/member/menu/noticeEdit";
	}
	
	@RequestMapping(value="/noticeEdit.do",method=RequestMethod.POST)
	public String noticeEdit_post(@ModelAttribute NoticeVO noticeVO,Model model) {
		logger.info("공지사항 수정 파라미터 noticeVO={}",noticeVO);
		
		int cnt=noticeService.updateNotice(noticeVO);
		
		String msg="공지사항 수정 실패",url="/member/menu/noticeEditOut.do";
		if(cnt>0){
			msg="공지사항 수정 성공";
		}
		
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		return "common/message";
	}
	
	@RequestMapping("/noticeOut.do")
	public String deleteNotice(@RequestParam(defaultValue="0")int no,Model model) {
		logger.info("게시물 삭제");
		
		int cnt=noticeService.deleteNotice(no);
		
		logger.info("선택한 게시글 삭제 결과, cnt={}", cnt);
		String msg="", url="/member/menu/noticeEditOut.do";
		
		if(cnt>0) {
			msg="선택한 게시글이 삭제되었습니다.";
		}else {
			msg="선택한 게시글 삭제 실패";
		}//if
		
		
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);

		return "common/message";
	}
	
	
	@RequestMapping("/deleteMulti.do")
	public String deleteMulti(@ModelAttribute NoticeListVO noticeListVo,Model model) {
		logger.info("공지사항 게시글 삭제, 파라미터 noticeListVo={}", noticeListVo);
		
		List<NoticeVO> list = noticeListVo.getNotiItems();
		
		int cnt=noticeService.deleteMulti(list);
		
		logger.info("선택한 게시글 삭제 결과, cnt={}", cnt);
		String msg="", url="/member/menu/noticeEditOut.do";
		
		if(cnt>0) {
			msg="선택한 게시글이 삭제되었습니다.";
		}else {
			msg="선택한 게시글 삭제 실패";
		}//if
		
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);

		return "common/message";
	}

}
