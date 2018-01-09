package com.hy.assj.notice.controller;

import java.io.File;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.mail.MessagingException;
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

import com.hy.assj.administrator.model.AdminService;
import com.hy.assj.common.EmailSender;
import com.hy.assj.common.PaginationInfo;
import com.hy.assj.common.SearchVO;
import com.hy.assj.common.Utility;
import com.hy.assj.hirenoti.model.HireNotiListVO;
import com.hy.assj.hirenoti.model.HireNotiVO;
import com.hy.assj.notice.model.NotiSearchVO;
import com.hy.assj.notice.model.NoticeListVO;
import com.hy.assj.notice.model.NoticeService;
import com.hy.assj.notice.model.NoticeVO;
import com.hy.assj.question.model.QuestionService;
import com.hy.assj.question.model.QuestionVO;
import com.hy.assj.question.model.QuestionViewVO;
import com.hy.assj.questionReply.model.QuestionReplyListVO;
import com.hy.assj.questionReply.model.QuestionReplyService;
import com.hy.assj.questionReply.model.QuestionReplyVO;
import com.hy.assj.reboard.model.ReboardService;
import com.hy.assj.reboard.model.ReboardVO;

@Controller
@RequestMapping("/member/menu")
public class NoticeController {
	private static final Logger logger
		=LoggerFactory.getLogger(NoticeController.class);
	
	@Autowired
	private NoticeService noticeService;
	
	@Autowired
	private ReboardService reboardService;
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private QuestionReplyService questionReplyService;
	
	@Autowired
	private QuestionService questionService;
	
	@Autowired
	private EmailSender emailSender;
	
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
	
	@RequestMapping("/adminQna.do")
	public String adminQna_get(@ModelAttribute SearchVO searchVo,Model model) {
		logger.info("QnA게시판 화면");
		
		//Paging 처리에 필요한 변수를 계산해주는 PaginationInfo 생성
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(Utility.BLOCK_SIZE);                      //블럭당 보여질 페이지 수(5)
		pagingInfo.setRecordCountPerPage(8);  //pageSize 페이지당 보여질 레코드수(8)
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());             //현재 페이지
		pagingInfo.setTotalRecord(reboardService.selectTotalRecordCount(searchVo)); //총 레코드 수
		
		//SearchVo에 값 셋팅
		searchVo.setRecordCountPerPage(8);    //pageSize 페이지당 보여질 레코드수(8)
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		logger.info("searchVo 최종값 : {}", searchVo);
		logger.info("pagingInfo currentPage : {}", pagingInfo.getCurrentPage());
		
		List<ReboardVO>list=reboardService.QnaList(searchVo);
		
		model.addAttribute("list", list);
		model.addAttribute("pagingInfo", pagingInfo);
				
				
		return "member/menu/adminQna";
	}
	
	@RequestMapping("/question.do")
	public String question_get(@ModelAttribute SearchVO searchVo,Model model) {
		logger.info("이메일 문의 게시판(get)");	
		
		//Paging 처리에 필요한 변수를 계산해주는 PaginationInfo 생성
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(Utility.BLOCK_SIZE);                      //블럭당 보여질 페이지 수(5)
		pagingInfo.setRecordCountPerPage(8);  //pageSize 페이지당 보여질 레코드수(8)
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());             //현재 페이지
		pagingInfo.setTotalRecord(adminService.questionListTotal()); //총 레코드 수
		
		//SearchVo에 값 셋팅
		searchVo.setRecordCountPerPage(8);    //pageSize 페이지당 보여질 레코드수(8)
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		logger.info("searchVo 최종값 : {}", searchVo);
		logger.info("pagingInfo currentPage : {}", pagingInfo.getCurrentPage());
				
		List<Map<String, Object>> list=adminService.questionList(searchVo);
		
		model.addAttribute("list",list);
		model.addAttribute("pagingInfo",pagingInfo);
			
		return "member/menu/question";
	}	
	
	@RequestMapping("/questionDelete.do")
	public String questionDelete(@RequestParam int no,Model model) {
		logger.info("이메일문의 삭제화면 no={}",no);
		
		int cnt=adminService.questionDelete(no);
		
		String msg="이메일 삭제 실패",url="/member/menu/question.do";
		if(cnt>0) {
			msg="선택한 이메일 삭제 성공";
		}
		
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		return "common/message";
	}
	
	@RequestMapping(value="/questionDetail.do",method=RequestMethod.GET)
	public String questionDetail_get(@RequestParam int no,Model model) {
		logger.info("이메일 문의 상세보기화면(get)");
		
		QuestionViewVO vo=adminService.selectByquestion(no);
		logger.info("선택한 이메일 문의 내용 vo={}",vo);
		
		model.addAttribute("vo",vo);
		
		return "member/menu/questionDetail";
	}
	
	@RequestMapping(value="/questionReply.do",method=RequestMethod.GET)
	public String questionReply_get(@RequestParam int no,Model model) {
		logger.info("이메일 문의 답변하기 화면(get) 파리미터 no={}",no);
		
		QuestionViewVO vo=adminService.selectByquestion(no);
		
		model.addAttribute("vo",vo);
		
		return "member/menu/questionReply";
	}
	
	@RequestMapping(value="/questionReply.do",method=RequestMethod.POST)
	public String questionReply_post(@ModelAttribute QuestionReplyVO questionReplyVo,
			@RequestParam String email,Model model) {
		logger.info("이메일 문의 답변하기 화면(post)");
		
		String subject="알쓸신JOB입니다.문의에 대한 답변입니다.";
		String content=questionReplyVo.getReplyContent();
		String receiver=email;
		String sender="admin@herbmall.com";
		
		try {
			emailSender.sendEmail(subject, content, receiver, sender);
			logger.info("이메일 발송성공!");
		} catch (MessagingException e) {
			logger.info("이메일 발송 실패!");
			e.printStackTrace();
		}
		
		int cnt=questionReplyService.insertQuestionReply(questionReplyVo);
		
		String msg="답변하기 실패",url="/member/menu/questionReply.do";
		if(cnt>0) {
			cnt=adminService.UpdateReplyFlag(questionReplyVo.getGroupNo());
			if(cnt>0) {
				msg="답변하기 성공";
				url="/member/menu/question.do";
			}	
		}
		
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		return "common/message";
	}
	
	@RequestMapping("/replySearch.do")
	public String replySearch_get(@ModelAttribute SearchVO searchVO,Model model) {
		logger.info("답변내용 확인 화면");
		
		//Paging 처리에 필요한 변수를 계산해주는 PaginationInfo 생성
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(Utility.BLOCK_SIZE);                      //블럭당 보여질 페이지 수(5)
		pagingInfo.setRecordCountPerPage(8);  //pageSize 페이지당 보여질 레코드수(8)
		pagingInfo.setCurrentPage(searchVO.getCurrentPage());             //현재 페이지 기본(1)
		pagingInfo.setTotalRecord(questionService.replyListTotalCount(searchVO)); //총 레코드 수
		
		//SearchVo에 값 셋팅
		searchVO.setRecordCountPerPage(8);    //pageSize 페이지당 보여질 레코드수(8)
		searchVO.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		logger.info("searchVO 최종값 : {}", searchVO);
		logger.info("pagingInfo currentPage : {}", pagingInfo.getCurrentPage());
		
		List<Map<String, Object>> list=questionService.replyList(searchVO);
		
		model.addAttribute("list",list);
		model.addAttribute("pagingInfo",pagingInfo);
		
		return "/member/menu/replySearch";
	}
	
	@RequestMapping("/replyDelete.do")
	public String replyDelete(@RequestParam int no,Model model) {
		logger.info("답변목록 삭제,파라미터 no={}",no);
		
		int cnt=questionService.replyDelete(no);
		
		String msg="답변 삭제 실패",url="/member/menu/replySearch.do";
		if(cnt>0) {
			msg="답변 삭제 성공";
		}
		
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		return "common/message";
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
	
	@RequestMapping("/replyDeleteMulti.do")
	public String replyDeleteMulti(@ModelAttribute QuestionReplyListVO replyListVo,Model model) {
		logger.info("답글내용 삭제 파라미터 QuestionReplyListVO={}",replyListVo);
		
		List<QuestionReplyVO> list= replyListVo.getReplyItems();
		
		int cnt=questionService.replyDeleteMulti(list);
		
		logger.info("선택한 답글내용 삭제 결과, cnt={}", cnt);
		String msg="", url="/member/menu/replySearch.do";
		
		if(cnt>0) {
			msg="선택한 답글내용이 삭제되었습니다.";
		}else {
			msg="선택한 답글게시글 삭제 실패";
		}//if
		
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);

		return "common/message";
		
	}

}
