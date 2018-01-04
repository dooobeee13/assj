package com.hy.assj.hirenoti.controller;

import java.util.ArrayList;
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
import com.hy.assj.hirenoti.model.HireNotiService;
import com.hy.assj.hirenoti.model.HireNotiVO;
import com.hy.assj.vo.CareerVO;
import com.hy.assj.vo.EducationVO;
import com.hy.assj.vo.EmpTypeVO;
import com.hy.assj.vo.MajorVO;
import com.hy.assj.vo.OccupationVO;
import com.hy.assj.vo.PositionVO;
import com.hy.assj.vo.RankVO;
import com.hy.assj.vo.SectorsVO;

@Controller
@RequestMapping("/hire_noti")
public class HireNotiController {
	private static final Logger logger = LoggerFactory.getLogger(HireNotiController.class);
	
	@Autowired
	private HireNotiService hirenotiService;
	
	@Autowired
	private CmMemberService cmMemberService;
	
	@RequestMapping(value="/hire1.do", method=RequestMethod.GET)
	public String hireNoti1() {
		
		logger.info("공고 등록 정보");
		
		return "hire_noti/hire1";
	}
	
	@RequestMapping(value="/career.do", method=RequestMethod.GET)
	public String career(Model model) {
		logger.info("경력 카테고리 요청");
		List<CareerVO> list = hirenotiService.selectCareerAll();
		model.addAttribute("list", list);
		return "hire_noti/career";
	}
	
	@RequestMapping(value="/empType.do", method=RequestMethod.GET)
	public String empType(Model model) {
		logger.info("고용형태 카테고리 요청");
		List<EmpTypeVO> list = hirenotiService.selectEmpTypeAll();
		model.addAttribute("list", list);
		return "hire_noti/empType";
	}
	
	@RequestMapping(value="/rank.do", method=RequestMethod.GET)
	public String rank(Model model) {
		logger.info("직급 카테고리 요청");
		List<RankVO> list = hirenotiService.selectRankAll();
		model.addAttribute("list", list);
		return "hire_noti/rank";
	}
	
	@RequestMapping(value="/position.do", method=RequestMethod.GET)
	public String position(Model model) {
		logger.info("직책 카테고리 요청");
		List<PositionVO> list = hirenotiService.selectPositionAll();
		model.addAttribute("list", list);
		return "hire_noti/position";
	}
	@RequestMapping(value="/education.do", method=RequestMethod.GET)
	public String education(Model model) {
		logger.info("학력 카테고리 요청");
		List<EducationVO> list = hirenotiService.selectEducationAll();
		model.addAttribute("list", list);
		return "hire_noti/education";
	}
	
	@RequestMapping(value="/major.do", method=RequestMethod.GET)
	public String major(Model model) {
		logger.info("전공 카테고리 요청");
		List<MajorVO> list = hirenotiService.selectMajorAll();
		List<MajorVO> topList = new ArrayList<>();
		List<MajorVO> subList = new ArrayList<>();
		for (MajorVO vo : list) {
			if (vo.getMajorTopNo() == 0) {
				topList.add(vo);
			} else {
				subList.add(vo);
			}
		}
		model.addAttribute("topList", topList);
		model.addAttribute("subList", subList);
		logger.info("toplist size : {}", topList.size() );
		logger.info("sublist size : {}", subList.size() );
		return "hire_noti/major";
	}
	
	@RequestMapping(value="/occupation.do", method=RequestMethod.GET)
	public String ocupation(Model model) {
		logger.info("직종 카테고리 요청");
		List<OccupationVO> list = hirenotiService.selectOccupationAll();
		List<OccupationVO> topList = new ArrayList<>();
		List<OccupationVO> subList = new ArrayList<>();
		for (OccupationVO vo : list) {
			if (vo.getOccuTopNo() == 0) {
				topList.add(vo);
			} else {
				subList.add(vo);
			}
		}
		model.addAttribute("topList", topList);
		model.addAttribute("subList", subList);
		logger.info("toplist size : {}", topList.size() );
		logger.info("sublist size : {}", subList.size() );
		return "hire_noti/occupation";
	}
	
	@RequestMapping(value="/sectors.do", method=RequestMethod.GET)
	public String sectors(Model model) {
		logger.info("업종 카테고리 요청");
		List<SectorsVO> list = hirenotiService.selectSectorsAll();
		List<SectorsVO> topList = new ArrayList<>();
		List<SectorsVO> subList = new ArrayList<>();
		for (SectorsVO vo : list) {
			if (vo.getSecTopNo() == 0) {
				topList.add(vo);
			} else {
				subList.add(vo);
			}
		}
		model.addAttribute("topList", topList);
		model.addAttribute("subList", subList);
		logger.info("toplist size : {}", topList.size() );
		logger.info("sublist size : {}", subList.size() );
		return "hire_noti/sectors";
	}
	
	
	@RequestMapping(value="/hire1.do", method=RequestMethod.POST)
	public String write_post(@ModelAttribute HireNotiVO hirenotiVo, HttpSession session,
			Model model) {
		logger.info("공고등록 처리-파라미터, vo={}", hirenotiVo);
		
		CmMemberVO cmMemberVo = (CmMemberVO) session.getAttribute("cmMemberVO");
		int cmNo = cmMemberVo.getCmNo();
		hirenotiVo.setCmNo(cmNo);
		hirenotiVo.setAreaNo(20);
		
		int cnt =hirenotiService.insertHireNoti(hirenotiVo);
		logger.info("공고등록  처리 결과, cnt={}", cnt);
		
		String msg="", url="";
		if(cnt>0) {
			msg="공고등록 처리되었습니다.";
			url="/hire_noti/hire2.do";
		}else {
			msg="공고등록 실패";
			url="/hire_noti/hire1.do";			
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";		
	}
	
	/*@RequestMapping(value="/hire1_edit.do" , method=RequestMethod.GET)
	public String hirenoti_edit(HttpSession session, Model model) {
		
	}
	*/
	
	@RequestMapping("/hire2.do")
	public String list(@ModelAttribute SearchVO searchVo,HttpSession session, Model model) {
		logger.info("공고 목록, 파라미터 = {}", searchVo);
		
		CmMemberVO cmMemberVo = (CmMemberVO) session.getAttribute("cmMemberVO");
		int cmNo = cmMemberVo.getCmNo();
		
			
	/*	//Paging 처리에 필요한 변수를 계산해주는 PasinationInfo생성
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(Utility.BLOCK_SIZE);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		pagingInfo.setRecordCountPerPage(Utility.RECORD_COUNT_PER_PAGE);
		
		
		//searchVo에 값 셋팅
		searchVo.setRecordCountPerPage(Utility.RECORD_COUNT_PER_PAGE);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		
		logger.info("searchVo 최종값 : {}", searchVo);*/
		
		List<Map<String, Object>>list =hirenotiService.selecthireNoti(cmNo);
		logger.info("공고목록 결과, list.size()={}", list.size());
		
		/*int totalRecord = hirenotiService.selectTotalRecordCount(searchVo);
		logger.info("글 전체 개수 조회 결과, totalRecord={}", totalRecord);
		
		pagingInfo.setTotalRecord(totalRecord);*/
		
		model.addAttribute("list",list);
/*		model.addAttribute("pagingInfo",pagingInfo);*/
		
		return "hire_noti/hire2";
		
		
	}
	
}
