package com.hy.assj.mypage;

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

import com.hy.assj.administrator.model.AdminService;
import com.hy.assj.common.PaginationInfo;
import com.hy.assj.common.Utility;
import com.hy.assj.hirenoti.model.HireNotiSearchVO;
import com.hy.assj.main.model.MHireNotiVO;
import com.hy.assj.main.model.MainService;
import com.hy.assj.member.model.MemberService;
import com.hy.assj.member.model.MemberVO;
import com.hy.assj.resume.controller.ResumeController;
import com.hy.assj.resume.model.ResumeService;
import com.hy.assj.resume.model.ResumeVO;

@Controller
public class MyPageController {

	private static final Logger logger 
	= LoggerFactory.getLogger(ResumeController.class);
	
	@Autowired
	private MainService mainService;
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private ResumeService resumeService;
	
	@Autowired
	private AdminService adminService;
	
	@RequestMapping("/mypageMain.do")
	public String mypageMain(@ModelAttribute HireNotiSearchVO hireNotiSearchVo,
		HttpSession session,Model model) {
		logger.info("마이페이지 바로가기");
		
		List<Map<String, Object>> news = adminService.selectNews();
		logger.info("뉴스 목록 결과 news.size()={}",news.size());
		MemberVO memberVO=(MemberVO)session.getAttribute("memberVO");
		hireNotiSearchVo.setMemNo(memberVO.getMemNo());
		MemberVO vo=memberService.selectMember(memberVO.getMemId());
		int supCount=memberService.empSupCount(vo.getMemNo());
		
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
			
		List<ResumeVO> resume= resumeService.selectAllMyResume(memberVO.getMemNo());
		List<Map<String, Object>> list=memberService.scrapList(hireNotiSearchVo);		
		List<MHireNotiVO> hnList = mainService.selectHnSummaryList();
		
		model.addAttribute("resume",resume);
		model.addAttribute("list",list);
		model.addAttribute("hnList", hnList);
		model.addAttribute("pagingInfo",pagingInfo);
		model.addAttribute("news",news);
		model.addAttribute("vo",vo);
		model.addAttribute("supCount",supCount);
		
		return "mypage/mypageMain";
	}
	
}
