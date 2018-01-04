package com.hy.assj.reboard.controller;

import java.io.File;
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
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hy.assj.cmMember.model.CmMemberService;
import com.hy.assj.cmMember.model.CmMemberVO;
import com.hy.assj.common.PaginationInfo;
import com.hy.assj.common.SearchVO;
import com.hy.assj.common.Utility;
import com.hy.assj.member.model.MemberService;
import com.hy.assj.member.model.MemberVO;
import com.hy.assj.reboard.model.ReboardService;
import com.hy.assj.reboard.model.ReboardVO;
import com.ibatis.sqlmap.engine.scope.SessionScope;

@Controller
@RequestMapping("/member/menu")
public class ReboardController {
	private static final Logger logger
	=LoggerFactory.getLogger(ReboardController.class);
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private CmMemberService cmMemberService;
	
	@Autowired
	private ReboardService reboardService;
	
	
    @RequestMapping(value="/qnaBoard.do",method=RequestMethod.GET)
	public String qnaBoard_get(@ModelAttribute SearchVO searchVo,Model model) {
		logger.info("Q&A 게시판");
	
		//Paging 처리에 필요한 변수를 계산해주는 PaginationInfo 생성
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(Utility.BLOCK_SIZE);                      //블럭당 보여질 페이지 수(5)
		pagingInfo.setRecordCountPerPage(Utility.RECORD_COUNT_PER_PAGE);  //pageSize 페이지당 보여질 레코드수(10)
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());             //현재 페이지
		pagingInfo.setTotalRecord(reboardService.selectTotalRecordCount(searchVo)); //총 레코드 수
		
		//SearchVo에 값 셋팅
		searchVo.setRecordCountPerPage(Utility.RECORD_COUNT_PER_PAGE);    //pageSize 페이지당 보여질 레코드수(10)
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		logger.info("searchVo 최종값 : {}", searchVo);
		logger.info("pagingInfo currentPage : {}", pagingInfo.getCurrentPage());
		
		List<ReboardVO>list=reboardService.QnaList(searchVo);
		
		model.addAttribute("list", list);
		model.addAttribute("pagingInfo", pagingInfo);
		
		return "member/menu/qnaBoard";
	}
	
	@RequestMapping(value="/qnaBoard.do",method=RequestMethod.POST)
	public String qnaBoard_post(@ModelAttribute SearchVO searchVo, Model model) {
		logger.info("글 목록, 파라미터 searchVo={}", searchVo);
		
		//Paging 처리에 필요한 변수를 계산해주는 PaginationInfo 생성
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(Utility.BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(Utility.RECORD_COUNT_PER_PAGE);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
				
		//SearchVo에 값 셋팅
		searchVo.setRecordCountPerPage(Utility.RECORD_COUNT_PER_PAGE);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		logger.info("searchVo 최종값 : {}", searchVo);
		
		List<ReboardVO> list =reboardService.selectAll(searchVo);
		logger.info("글목록 결과, list.size()={}", list.size());
		
		int totalRecord = reboardService.selectTotalRecordCount(searchVo);
		logger.info("글 전체 개수 조회 결과, totalRecord={}", totalRecord);
		
		pagingInfo.setTotalRecord(totalRecord);
		
		model.addAttribute("list", list);
		model.addAttribute("pagingInfo", pagingInfo);
			
		return "member/menu/qnaBoard";
	}
	
	@RequestMapping(value="/qnaWrite.do",method=RequestMethod.GET)
	public String qnaWrite_get() {
		logger.info("Q&A 글쓰기화면");
		return "member/menu/qnaWrite";
	}
	
	@RequestMapping(value="/qnaWrite.do",method=RequestMethod.POST)
	public String qnaWrite_post(@ModelAttribute ReboardVO reboardVO,Model model) {
		logger.info("Q&A 글쓰기 개인회원(post) 파라미터 reboardVO={}",reboardVO);
		
		int cnt=reboardService.insertQnA(reboardVO);
		
		String msg="Q&A 글 등록 실패",url="/member/menu/qnaWrite.do";
		if(cnt>0){
			msg="Q&A 글 등록 성공";
			url="/member/menu/qnaBoard.do";
		}
		
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		return "common/message";
	}
	
 	@RequestMapping("/QnAcountUpdate.do")
	public String countUpdate(@RequestParam(defaultValue="0") int no,Model model) {
		logger.info("Q&A게시판 조회수 증가,개인회원 파라미터 no={}", no);
		
		int cnt = reboardService.updateReadCount(no);

		model.addAttribute("no",no);

		logger.info(" Q&A게시판 조회수 증가 결과, cnt={}", cnt);
		
		return "redirect:/member/menu/qnaDetail.do?no="+no;
	}
	

	@RequestMapping("/qnaDetail.do")
	public String qnaDetail_get(@RequestParam(defaultValue="0") int no,Model model) {
		logger.info("Q&A게시판 상세보기 파라미터no={}",no);
		
		ReboardVO vo=reboardService.selectByNo(no);
		
		model.addAttribute("vo",vo);
		
		return "/member/menu/qnaDetail";
	}
	
	@RequestMapping(value="/edit.do",method=RequestMethod.GET)
	public String qnaEdit_get(@RequestParam(defaultValue="0") int no,Model model) {
		logger.info("Q&A게시판 수정화면 파라미터no={}",no);
		
		ReboardVO vo=reboardService.selectByNo(no);
		
		model.addAttribute("vo",vo);
		
		return "/member/menu/qnaEdit";
	}
	
	@RequestMapping(value="/edit.do",method=RequestMethod.POST)
	public String qnaEdit_post(@ModelAttribute ReboardVO reboardVo,Model model) {
		logger.info("Q&A게시판 수정화면 (post) 파리미터 reboardVo={}",reboardVo);
		
		int cnt=reboardService.updateQnA(reboardVo);
		
		String msg="게시글 수정에 실패했습니다.",url="/member/menu/qnaEdit.do";
		if(cnt>0) {
			msg="게시글 수정에 성공했습니다.";
			url="/member/menu/qnaBoard.do";
		}
		
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		return "common/message";
	}
	
	@RequestMapping("/qnaOut.do")
	@ResponseBody
	public String qnaOut(@RequestParam String no,@RequestParam String groupNo
			,@RequestParam String step, @RequestParam String pwd) {
		logger.info("ajax-qnaOut화면 파라미터 no={},groupNo={},",no,groupNo);
		logger.info("step={}, pwd={}",step, pwd);
		
		Map<String, String> map = new HashMap<String, String>();
		
		map.put("no", no);
		map.put("groupNo", groupNo);
		map.put("step", step);
		map.put("pwd", pwd);
		
		boolean result = reboardService.deleteReBoard(map);
		
		return String.valueOf(result);
	}
	
	@RequestMapping(value="/qnaReply.do",method=RequestMethod.GET)
	public String qnaReply_get(@RequestParam(defaultValue="0") int no,Model model) {
		logger.info("답글 화면(get) 파라미터 no={}",no);
		
		ReboardVO vo=reboardService.selectByNo(no);
		logger.info("답변하기 조회 결과, vo={}", vo);
		
		model.addAttribute("vo", vo);
		
		return "member/menu/qnaReply";
	}
	
	@RequestMapping(value="/qnaReply.do", method=RequestMethod.POST)
	public String reply_post(@ModelAttribute ReboardVO vo,
			Model model) {
		logger.info("답변하기 처리, 파라미터 vo={}", vo);
		
		int cnt = reboardService.reply(vo);
		logger.info("답변하기 처리, 결과 cnt={}", cnt);
		
		String msg="", url="";
		if(cnt>0) {
			msg="답변하기 성공";
			url="/member/menu/qnaBoard.do";
		}else {
			msg="답변하기 실패";
			url="/member/menu/qnaReply.do?no="+vo.getNo();
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
		
	}
	
}
