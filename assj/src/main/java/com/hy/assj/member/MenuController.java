package com.hy.assj.member;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

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
import com.hy.assj.common.PaginationInfo;
import com.hy.assj.common.SearchVO;
import com.hy.assj.common.Utility;
import com.hy.assj.hirenoti.model.HireNotiListVO;
import com.hy.assj.hirenoti.model.HireNotiSearchVO;
import com.hy.assj.hirenoti.model.HireNotiVO;
import com.hy.assj.member.model.MemberService;
import com.hy.assj.member.model.MemberVO;
import com.hy.assj.question.model.QuestionService;
import com.hy.assj.question.model.QuestionVO;

@Controller
@RequestMapping("/member/menu")
public class MenuController {
	private static final Logger logger
	=LoggerFactory.getLogger(MenuController.class);
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private CmMemberService cmMemberService;
	
	@Autowired
	private QuestionService questionServicce;
	
	@RequestMapping(value="/onenone.do",method=RequestMethod.GET)
	public String onenone_get(HttpSession session,Model model) {
		logger.info("1:1이메일문의 화면(get)");
		
		if(session.getAttribute("memberVO")!=null) {			
			MemberVO memberVO=(MemberVO)session.getAttribute("memberVO");
			MemberVO vo=memberService.selectMember(memberVO.getMemId());
			model.addAttribute("vo",vo);
		}else if(session.getAttribute("cmMemberVO")!=null) {
			CmMemberVO cmMemberVO=(CmMemberVO) session.getAttribute("cmMemberVO");
			CmMemberVO cmVo=cmMemberService.selectMember(cmMemberVO.getCmId());
			model.addAttribute("cmVo",cmVo);
		}
		
		return "member/menu/onenone";	
	}
	
	@RequestMapping(value="/onenone.do",method=RequestMethod.POST)
	public String onenone_post(@ModelAttribute QuestionVO questionVo,Model model) {
		logger.info("이메일 문의(post) 파라미터 questionVO={}",questionVo);
		
		int cnt=questionServicce.insertQuestion(questionVo);
		
		String msg="이메일 문의 실패했습니다",url="/member/menu/onenone.do";
		if(cnt>0) {
			msg="빠른 답변해드리도록 최선을 다하겠습니다.감사합니다";
			url="/index.do";
		}
		
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		return "common/message";
	}
	
	@RequestMapping("/psService.do")
	public String psService() {
		logger.info("개인회원 서비스 화면");
		return "member/menu/psService";
	}
	
	@RequestMapping("/psService2.do")
	public String psService2() {
		logger.info("취업준비 화면");
		return "member/menu/psService2";
	}
	
	@RequestMapping("/psService3.do")
	public String psService3() {
		logger.info("이직준비 화면");
		return "member/menu/psService3";
	}
	
	
	@RequestMapping(value="/scrap.do",method=RequestMethod.GET)
	public String scrap_get(@ModelAttribute HireNotiSearchVO hireNotiSearchVo,
			HttpSession session,Model model) {
		logger.info("스크랩공고 화면 (get) 파라미터 session={}",session);
		
		MemberVO memberVO=(MemberVO)session.getAttribute("memberVO");
		hireNotiSearchVo.setMemNo(memberVO.getMemNo());
		
		//Paging 처리에 필요한 변수를 계산해주는 PaginationInfo 생성
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(Utility.BLOCK_SIZE);                                       //블럭당 보여질 페이지 수(5)
		pagingInfo.setRecordCountPerPage(Utility.RECORD_COUNT_PER_PAGE);                   //pageSize 페이지당 보여질 레코드수(10)
		pagingInfo.setCurrentPage(hireNotiSearchVo.getCurrentPage());                      //현재 페이지
		pagingInfo.setTotalRecord(memberService.scrapTotalRecordCount(hireNotiSearchVo));  //총 레코드 수
		
		//SearchVo에 값 셋팅
		hireNotiSearchVo.setRecordCountPerPage(Utility.RECORD_COUNT_PER_PAGE);    //pageSize 페이지당 보여질 레코드수(10)
		hireNotiSearchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		logger.info("hireNotiSearchVo 최종값 : {}", hireNotiSearchVo);
		logger.info("pagingInfo currentPage : {}", pagingInfo.getCurrentPage());
				
		
		List<Map<String, Object>> list=memberService.scrapList(hireNotiSearchVo);		
		
		model.addAttribute("list",list);
		model.addAttribute("pagingInfo",pagingInfo);
		
		return "member/menu/scrap";
	}
	
	@RequestMapping(value="/scrap.do",method=RequestMethod.POST)
	public String scrap_post(@ModelAttribute HireNotiSearchVO hireNotiSearchVo,
			HttpSession session,Model model) {
		logger.info("스크랩공고 화면(post) 파라미터 session={}",session);
		
		MemberVO memberVO=(MemberVO)session.getAttribute("memberVO");
		hireNotiSearchVo.setMemNo(memberVO.getMemNo());
		
		//Paging 처리에 필요한 변수를 계산해주는 PaginationInfo 생성
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(Utility.BLOCK_SIZE);                                       //블럭당 보여질 페이지 수(5)
		pagingInfo.setRecordCountPerPage(Utility.RECORD_COUNT_PER_PAGE);                  //pageSize 페이지당 보여질 레코드수(10)
		pagingInfo.setCurrentPage(hireNotiSearchVo.getCurrentPage());                     //현재 페이지
		pagingInfo.setTotalRecord(memberService.scrapTotalRecordCount(hireNotiSearchVo)); //총 레코드 수
		
		//SearchVo에 값 셋팅
		hireNotiSearchVo.setRecordCountPerPage(Utility.RECORD_COUNT_PER_PAGE);    //pageSize 페이지당 보여질 레코드수(10)
		hireNotiSearchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		logger.info("hireNotiSearchVo 최종값 : {}", hireNotiSearchVo);
		logger.info("pagingInfo currentPage : {}", pagingInfo.getCurrentPage());
				
		List<Map<String, Object>> list=memberService.scrapList(hireNotiSearchVo);		
		
		model.addAttribute("list",list);
		model.addAttribute("pagingInfo",pagingInfo);
		
		return "member/menu/scrap";
	}

	@RequestMapping("/hnDelMulti.do")
	public String hnDelMulti(@ModelAttribute HireNotiListVO hireNotiListVo,Model model) {
		logger.info("스크랩한공고 삭제, 파라미터 hireNotiListVo={}", hireNotiListVo);
		
		List<HireNotiVO> list = hireNotiListVo.getScrapItems();
		
		int cnt=memberService.scrapDelMulti(list);
		
		logger.info("선택한 공고 삭제 결과, cnt={}", cnt);
		String msg="", url="/member/menu/scrap.do";
		
		if(cnt>0) {
			msg="선택한 공고가 삭제되었습니다.";
		}else {
			msg="선택한 공고 삭제 실패";
		}//if
		
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);

		return "common/message";
	}
	
}
