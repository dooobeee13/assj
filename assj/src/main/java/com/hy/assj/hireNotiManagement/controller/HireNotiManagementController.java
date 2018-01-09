package com.hy.assj.hireNotiManagement.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hy.assj.cmMember.model.CEsWithResumeVO;
import com.hy.assj.cmMember.model.CmMemberVO;
import com.hy.assj.cmMember.model.HireNotiWithEsAndResumeVO;
import com.hy.assj.hireNotiManagement.model.ApplicantStatByHnDTO;
import com.hy.assj.hireNotiManagement.model.HireNotiManagementService;

@Controller
public class HireNotiManagementController {

	private static final Logger logger = LoggerFactory.getLogger(HireNotiManagementController.class);
	
	@Autowired
	private HireNotiManagementService hnManageService;
	
	private Map<String, String> statusMap = new HashMap<>();
	
	{
		statusMap.put("inProg", "진행");
		statusMap.put("wait", "대기");
		statusMap.put("deadline", "마감");
	}
	
	@RequestMapping("/hnmanage.do")
	public String hnManage(@RequestParam(required=false) String type, HttpSession session, Model model) {
		logger.info("기업서비스 요청");
		CmMemberVO cmMemberVo = (CmMemberVO) session.getAttribute("cmMemberVO");
		if (cmMemberVo == null) {
			//로그인 요청
		} else {
			//회사의 공고리스트 가져오기
			List<HireNotiWithEsAndResumeVO> list = hnManageService.getMyHireNoti(cmMemberVo.getCmNo());
			List<Map<String, Object>> retList = new ArrayList<>();
			int total = list.size();
			int inProg = 0;
			int wait = 0;
			int deadline = 0;
			for (HireNotiWithEsAndResumeVO vo : list) {
				String status = vo.getDeadlineStatus();
				if (status.equals("진행")) {
					inProg += 1;
				} else if (status.equals("대기")) {
					wait += 1;
				} else if (status.equals("마감")) {
					deadline += 1;
				}
				System.out.println("type = " + type);
				if (type != null && !status.equals(statusMap.get(type))) {
					continue;
				}
				Map<String, Object> map = new HashMap<>();
				map.put("vo", vo);
				map.put("stat", hnManageService.calStats(vo));
				retList.add(map);
			}
			model.addAttribute("total", total);
			model.addAttribute("inProg", inProg);
			model.addAttribute("wait", wait);
			model.addAttribute("deadline", deadline);
			model.addAttribute("list", retList);
			model.addAttribute("topIndex", 2);
		}
		return "company/hireNotiManagement";
	}
	
	@RequestMapping("/applicantManage.do")
	public String applicantManage(@RequestParam(required=false, defaultValue="0") int hnNo, HttpSession session, Model model) {
		CmMemberVO cmMemberVo = (CmMemberVO) session.getAttribute("cmMemberVO");
		if (cmMemberVo == null) {
			//로그인 요청
		} else {
			int cmNo = cmMemberVo.getCmNo();
			HireNotiWithEsAndResumeVO vo = null;
			if (hnNo == 0) {
				vo = hnManageService.getLatestHnNo(cmNo);
			} else {
				vo = hnManageService.getHireNotiByhnNo(hnNo);
			}
			List<HireNotiWithEsAndResumeVO> list = hnManageService.getHnSummary(cmNo);
			List<HireNotiWithEsAndResumeVO> inProgList = new ArrayList<>();
			List<HireNotiWithEsAndResumeVO> waitList = new ArrayList<>();
			List<HireNotiWithEsAndResumeVO> deadlineList = new ArrayList<>();
			int total = list.size();
			int inProg = 0;
			int wait = 0;
			int deadline = 0;
			for (HireNotiWithEsAndResumeVO hnVo : list) {
				if("진행".equals(hnVo.getDeadlineStatus())) {
					inProg += 1;
					if (hnNo == hnVo.getHnNo()) {
						continue;
					}
					inProgList.add(hnVo);
				} else if("대기".equals(hnVo.getDeadlineStatus())) {
					wait += 1;
					if (hnNo == hnVo.getHnNo()) {
						continue;
					}
					waitList.add(hnVo);
				} else if("마감".equals(hnVo.getDeadlineStatus())) {
					deadline += 1;
					if (hnNo == hnVo.getHnNo()) {
						continue;
					}
					deadlineList.add(hnVo);
				}
			}
			model.addAttribute("vo", vo);
			model.addAttribute("stat", hnManageService.calStats(vo));
			model.addAttribute("inProgList", inProgList);
			model.addAttribute("waitList", waitList);
			model.addAttribute("deadlineList", deadlineList);
			model.addAttribute("total", total);
			model.addAttribute("inProg", inProg);
			model.addAttribute("wait", wait);
			model.addAttribute("deadline", deadline);
			model.addAttribute("topIndex", 2);
		}
		return "company/applicantManage";
	}
	
	@RequestMapping("/evalResume.do")
	@ResponseBody
	public ApplicantStatByHnDTO evalResume(int hnNo, int esNo, int status) {
		String statusStr = "";
		if (status == 1) {
			statusStr = "검토중";
		} else if (status == 2) {
			statusStr = "불합격";
		} else if (status == 3) {
			statusStr = "서류합격";
		}
		
		int cnt = hnManageService.updateEmpSup(esNo, statusStr);
		logger.info("지원자상태 변경 후 cnt={}", cnt);
		HireNotiWithEsAndResumeVO vo = hnManageService.getHireNotiByhnNo(hnNo);
		ApplicantStatByHnDTO dto = hnManageService.calStats(vo);
		return dto;
		/*return "{\"status\": \""+ statusStr +"\", \"totalCnt\": "+dto.getTotalCnt()+", \"underReviewCnt\": " + dto.getUnderReivewCnt() 
			+ ", \"failCnt\": " + dto.getFailCnt() + ", \"passPaperCnt\": " + dto.getPassPaperCnt() + ", \"dontReadCnt\": " + dto.getDontReadCnt() + "}";*/
	}
	
	@RequestMapping("/excel.do")
	public String excel(int hnNo, Model model) {
		HireNotiWithEsAndResumeVO vo = hnManageService.getHireNotiByhnNo(hnNo);
		List<CEsWithResumeVO> resumeList = vo.getcEsWithResumeList();
		HashMap<String,Object> row = new HashMap<String, Object>();
		HashMap<String,String> cell = null;
		List<HashMap<String,String>> list = new ArrayList<HashMap<String,String>>();
		if (resumeList != null && resumeList.size() != 0) {
			int rowName = 1;
			for (int i=0; i< resumeList.size(); i++) {
				CEsWithResumeVO resume = resumeList.get(i);
				cell = new HashMap<>();
				
				cell.put("row" + rowName +"_cell1", resume.getName());
				cell.put("row" + rowName +"_cell2", resume.getGender());
				cell.put("row" + rowName + "_cell3", String.valueOf(resume.getAge()));
				cell.put("row" + rowName + "_cell4", resume.getSchoolName());
				cell.put("row" + rowName +"_cell5", resume.getMajor());
				cell.put("row" + rowName + "_cell6", resume.getStatus());
				list.add(cell);
				rowName++;
			}
			row.put("dataList", list);//데이터목록
			row.put("dataLength", 6);//엑셀셀갯수

		  	String labels[] = { "이름", "성별", "나이", "학교", "전공", "지원상태" };//셀타이틀 
		  	int columnWidth[] = { 15, 10, 10, 30, 30, 15 };//셀크기 가로
		  
		  	model.addAttribute("columnWidth", columnWidth);
		  	model.addAttribute("sheetName", vo.getHnNotititle() + " 지원자 목록");//시트명
		  	model.addAttribute("labels", labels);//셀타이틀 

		  	model.addAttribute("dataMap", row);
		}
		
		return "excelXlsx";
	}
	
	
	
}
