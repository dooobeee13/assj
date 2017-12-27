package com.hy.assj.resume.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.hy.assj.common.FileuploadUtil;
import com.hy.assj.resume.model.ActivitiesVO;
import com.hy.assj.resume.model.CertificateVO;
import com.hy.assj.resume.model.EduHistoryVO;
import com.hy.assj.resume.model.PortfolioVO;
import com.hy.assj.resume.model.ResumeService;
import com.hy.assj.resume.model.ResumeVO;
import com.hy.assj.resume.model.SchoolHistoryVO;
import com.hy.assj.resume.model.SkillVO;
import com.hy.assj.vo.AreaVO;
import com.hy.assj.vo.EducationVO;
import com.hy.assj.vo.EmpTypeVO;
import com.hy.assj.vo.MajorVO;
import com.hy.assj.vo.OccupationVO;
import com.hy.assj.vo.SectorsVO;


@Controller
@RequestMapping("/resume")
public class ResumeController {
	
	@Autowired
	private ResumeService resumeService;
	
	@Autowired
	private FileuploadUtil fileUtil;

	
	private static final Logger logger = LoggerFactory.getLogger(ResumeController.class);
	
	@RequestMapping(value="/resumeProfile.do", method=RequestMethod.GET)
	public String resumeProfile_get() {
		logger.info("이력서 사진 등록 페이지 보여주기");
		return "resume/profileImg/profileImg";
	}
	
	@RequestMapping("/resumeMajorDetail.do")
	@ResponseBody
	public List<MajorVO> resumeMajorDetail(@RequestParam int no) {
		logger.info("전공 상세 띄우기 no={}",no);
		
		List<MajorVO> majorListDetail = resumeService.selectAllMajorDetail(no);
		
		return majorListDetail;
	}
	
	@RequestMapping("/resumeAreaDetail.do")
	@ResponseBody
	public List<AreaVO> resumeAreaDetail(@RequestParam int no){
		logger.info("지역 상세 띄우기 파라미터 no={}",no);
		
		List<AreaVO> areaListDetail = resumeService.selectAllAreaDetail(no);
		
		return areaListDetail;
	}
	
	@RequestMapping("/resumeSectorsDetail.do")
	@ResponseBody
	public List<SectorsVO> resumeSectorsDetail(@RequestParam int no){
		logger.info("업종 상세 띄우기 파라미터 no={}",no);
		
		List<SectorsVO> secListDetail = resumeService.selectAllSectorsDetail(no);
		
		return secListDetail;
	}
	
	@RequestMapping("/resumeOccuDetail.do")
	@ResponseBody
	public List<OccupationVO> resumeOccuDetail(@RequestParam int no){
		logger.info("직종 상세 띄우기 파라미터 no={}",no);
		
		List<OccupationVO> occuListDetail = resumeService.selectAllOccuDetail(no);
		
		return occuListDetail;
	}
	
	@RequestMapping(value="/resumeInsert.do", method=RequestMethod.GET)
	public void resumeInsert_get(Model model) {
		logger.info("이력서 등록 페이지 보여주기");

		List<AreaVO> areaListTop = resumeService.selectAllAreaTop();
		
		List<MajorVO> majorListTop = resumeService.selectAllMajorTop();
		
		List<EmpTypeVO> ETList = resumeService.selectAllET();
		
		List<SectorsVO> sectorsListTop = resumeService.selectAllSectorsTop();
		
		List<OccupationVO> occuListTop = resumeService.selectAllOccuTop();
		
		model.addAttribute("areaListTop", areaListTop);		
		model.addAttribute("majorListTop", majorListTop);
		model.addAttribute("ETList", ETList);		
		model.addAttribute("sectorsListTop", sectorsListTop);
		model.addAttribute("occuListTop", occuListTop);		
		
	}
	
	@Transactional
	@RequestMapping(value="/resumeInsert1.do", method=RequestMethod.POST)
	public String resumeInsert_post(@ModelAttribute ResumeVO resumeVO,SchoolHistoryVO shVO,EduHistoryVO ehVO,SkillVO skillVO,
			CertificateVO cerVO, ActivitiesVO actVO, AreaVO areaVO, PortfolioVO pfVO, EmpTypeVO etVO, OccupationVO occuVO, SectorsVO secVO
			,EducationVO eduVO,HttpServletRequest request, MultipartHttpServletRequest mhsq,
			@RequestParam String resumeBirth1, Model model) {
		logger.info("이력서 등록, 파라미터 resumeVO={}", resumeVO);
		
			Date resumeBirth = new Date();
		try {
			resumeBirth = new SimpleDateFormat("yyyy/MM/dd").parse(resumeBirth1);
		} catch (ParseException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		resumeVO.setResumeBirth(resumeBirth);
		
		//이미지 업로드 처리
		String imageURL="";
		try {
			List<Map<String, Object>> list 
			=fileUtil.fileupload(request, FileuploadUtil.RESUME_PHOTO);
			for(Map<String, Object> map: list) {
				imageURL=(String) map.get("file1");
				resumeVO.setResumePhoto(imageURL);
			}
			
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		//파일 업로드 처리
		List<Map<String, Object>> list=null;
		String fileName="", originalFileName="";
		long fileSize=0;
		try {
			list=fileUtil.fileupload(request, FileuploadUtil.RESUME_PORTFOLIO);
			
			//파일 업로드 한 경우
			if(list!=null && !list.isEmpty()) {
				for(Map<String, Object> map : list) {
					originalFileName=(String) map.get("originalFilename");
					fileName=(String) map.get("filename");
					fileSize=(Long) map.get("fileSize");
				}//for
			}
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		pfVO.setPortFilename(fileName);
		pfVO.setPortOrifname(originalFileName);
		pfVO.setPortFilesize(fileSize);

		
		HashMap<String, Object> map = new HashMap<String,Object>();
		
		map.put("resumeVO", resumeVO);
		map.put("shVO", shVO);
		map.put("ehVO", ehVO);
		map.put("skillVO", skillVO);
		map.put("cerVO", cerVO);
		map.put("actVO", actVO);
		map.put("areaVO", areaVO);
		map.put("pfVO", pfVO);
		map.put("etVO", etVO);
		map.put("occuVO", occuVO);
		map.put("secVO", secVO);
		map.put("eduVO", eduVO);
		
		//int cnt = resumeService.insertResume(map);
		int cnt = resumeService.insertResume(resumeVO);
		logger.info("이력서 등록 결과 cnt={}",cnt);
		
		String msg="", url="";
		if(cnt>0) {
			msg="이력서 등록 완료.";
			url="/index.do";
		}else {
			msg="이력서 등록 실패";
			url="/resume/resumeInsert.do";
		}

		model.addAttribute("msg", msg);
		model.addAttribute("url", url);		
		
		return "common/message";
		
	}
	
	@Transactional
	@RequestMapping(value="/resumeInsert.do", method=RequestMethod.POST)
	public String test(
			@ModelAttribute ResumeVO resumeVO,@ModelAttribute SchoolHistoryVO shVO,@ModelAttribute EduHistoryVO ehVO,
			@ModelAttribute ActivitiesVO actVO,@ModelAttribute CertificateVO cerVO,@ModelAttribute SkillVO skillVO,
			@RequestParam String resumeBirth1,
			HttpServletRequest request,Model model) {
		logger.info("이력서 등록 결과 resumeVO={}",resumeVO);
		
		Date resumeBirth = new Date();
		try {
			resumeBirth = new SimpleDateFormat("yyyy/MM/dd").parse(resumeBirth1);
		} catch (ParseException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		//이미지 업로드 처리
		String imageURL="";
		try {
			List<Map<String, Object>> list 
			=fileUtil.fileupload(request, FileuploadUtil.RESUME_PHOTO);
			for(Map<String, Object> map: list) {
				imageURL=(String) map.get("filename");
				resumeVO.setResumePhoto(imageURL);
				logger.info("이미지 업로드, imageURL={}",imageURL);
			}
			
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		/*logger.info("대외활동 사이즈 actVO.getActVOList().size()={}",actVO.getActVOList().size());
		
		logger.info("보유능력 사이즈 skillVO.getSkillVOList().size()={}",skillVO.getSkillVOList().size());
		*/
		
		// 추가 되는 학력 같은 값들의 length를 구한뒤 반복
		
		resumeVO.setMemNo(1);
		resumeVO.setAreaNo(1);
		resumeVO.setEduNo(1);
		resumeVO.setEtNo(1);
		resumeVO.setOccuNo(1);
		resumeVO.setSecNo(1);
		resumeVO.setResumeBirth(resumeBirth);
		
		int cnt = resumeService.insertResume(resumeVO);
		logger.info("이력서 등록 결과 cnt={}",cnt);
		String msg="", url="";
		if(cnt>0) {
			msg="이력서 등록 완료.";
			url="/index.do";
		}else {
			msg="이력서 등록 실패";
			url="/resume/resumeInsert.do";
		}

		model.addAttribute("msg", msg);
		model.addAttribute("url", url);		
		
		return "common/message";
	}
	
	@RequestMapping("/resumeList.do")
	public String resumeList(HttpSession session,Model model) {
		logger.info("내 이력서 리스트보기");
		
		//String memEmail = (String) session.getAttribute("memEmail");
		
		String memEmail = "test";
		
		int memNo = resumeService.selectMemNoByEmail(memEmail);
		
		List<ResumeVO> list = resumeService.selectAllMyResume(memNo);
		
		model.addAttribute("list", list);
		
		return "resume/resumeList";
	}
	
	

	
}
