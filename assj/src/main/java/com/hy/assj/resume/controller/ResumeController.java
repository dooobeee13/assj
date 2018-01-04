package com.hy.assj.resume.controller;

import java.io.IOException;
import java.util.Calendar;
import java.util.Date;
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
import com.hy.assj.member.model.MemberVO;
import com.hy.assj.resume.model.ActivitiesVO;
import com.hy.assj.resume.model.CertificateVO;
import com.hy.assj.resume.model.EduHistoryVO;
import com.hy.assj.resume.model.IntroductionVO;
import com.hy.assj.resume.model.PortfolioVO;
import com.hy.assj.resume.model.ResumeService;
import com.hy.assj.resume.model.ResumeVO;
import com.hy.assj.resume.model.SchoolHistoryVO;
import com.hy.assj.resume.model.SkillVO;
import com.hy.assj.vo.AreaVO;
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
		
		List<AreaVO> selectBasicArea = resumeService.selectBasicArea();
		
		List<MajorVO> majorListTop = resumeService.selectAllMajorTop();
		
		List<MajorVO> majorListBasicDetail = resumeService.selectMajorBasicD();
		
		List<EmpTypeVO> ETList = resumeService.selectAllET();
		
		List<SectorsVO> sectorsListTop = resumeService.selectAllSectorsTop();
		
		List<OccupationVO> occuListTop = resumeService.selectAllOccuTop();
		
		List<SectorsVO> selectBasicSec = resumeService.selectBasicSec();
		
		List<OccupationVO> selectBasicOccu = resumeService.selectBasicOccu();
		
		model.addAttribute("areaListTop", areaListTop);		
		model.addAttribute("majorListTop", majorListTop);
		model.addAttribute("ETList", ETList);		
		model.addAttribute("sectorsListTop", sectorsListTop);
		model.addAttribute("occuListTop", occuListTop);		
		model.addAttribute("majorListBasicDetail", majorListBasicDetail);		
		model.addAttribute("selectBasicArea", selectBasicArea);	
		model.addAttribute("selectBasicSec", selectBasicSec);	
		model.addAttribute("selectBasicOccu", selectBasicOccu);	
		
	}	
	

	
	
	@Transactional
	@RequestMapping(value="/resumeInsert.do", method=RequestMethod.POST)
	public String resumeInsert_post(
			@ModelAttribute ResumeVO resumeVO,@ModelAttribute SchoolHistoryVO shVO,@ModelAttribute EduHistoryVO ehVO,
			@ModelAttribute ActivitiesVO actVO,@ModelAttribute CertificateVO cerVO,@ModelAttribute SkillVO skillVO,
			@ModelAttribute PortfolioVO pfVO,@ModelAttribute IntroductionVO introVO,
			HttpServletRequest request,HttpSession session,MultipartHttpServletRequest mhsr,Model model) {
		logger.info("이력서 등록 resumeVO={}",resumeVO);		
				
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
		session=request.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("memberVO");
		logger.info("회원 session, memberVO={}",memberVO);
		
		if(resumeVO.getResumePhoto()==null || resumeVO.getResumePhoto().isEmpty() ) {
			resumeVO.setResumePhoto("사진없음");
		}
				
		resumeVO.setMemNo(memberVO.getMemNo());
		resumeVO.setAreaNo(resumeVO.getAreaNo());
		resumeVO.setEtNo(resumeVO.getEtNo());
		resumeVO.setOccuNo(resumeVO.getOccuNo());
		resumeVO.setSecNo(resumeVO.getSecNo());
		
		logger.info("이력서 등록전 resumeVO={}",resumeVO);
		int cnt = resumeService.insertResume(resumeVO);
		
		logger.info("이력서 등록 결과 cnt={}",cnt);
		logger.info("이력서 등록후 resumeVO={}",resumeVO);
		
		int resumeVoNo = resumeVO.getResumeNo();
		
		//파일 업로드 처리
		
				String fileName="", originalFileName="";
				long fileSize=0;
				int pfcnt = 0;
				String[] portIntro = request.getParameterValues("portIntro");
				
				try {
					List<Map<String, Object>> list2
					=fileUtil.fileupload(request, FileuploadUtil.RESUME_PORTFOLIO);
					
					for(Map<String, Object> map: list2) {
						fileName=(String) map.get("filename"); 
						originalFileName = (String) map.get("originalFilename");
						fileSize = (long) map.get("fileSize");
						logger.info("포트폴리오 업로드, originalFileName={}",originalFileName);
						
						String str = portIntro[pfcnt];
						
						str = str.replaceAll("\r\n", "<br>");
						
						pfVO.setPortFilename(fileName);
						pfVO.setPortFilesize(fileSize);
						pfVO.setPortOrifname(originalFileName);
						pfVO.setPortIntro(str);
						pfVO.setResumeNo(resumeVoNo);
						logger.info("포트폴리오 insert 전,pfVO={} ",pfVO);
						int pfres = resumeService.insertPF(pfVO);
						logger.info("포트폴리오 등록 결과 pfres={}",pfres);
						
						pfcnt++;
					}
					
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
		
		String msg="", url="";
		
		int shCnt = 0;
		int ehCnt = 0;
		int actCnt = 0;
		int cerCnt = 0;
		int skillCnt = 0;
		
		
		
		if(cnt>0) {
			
			// 학력 등록 ( 고등학교는 필수 입력, 대학교 이상은 추가 입력 가능 )
			if(shVO.getShVOList()!=null) {
				logger.info("학력 사이즈, shVO.getShVOList().size()={}",shVO.getShVOList().size());
				
				for(int i=0; i<shVO.getShVOList().size(); i++) {
					logger.info("학력 등록 i={},shVO.getShVOList().get(i)={}",i,shVO.getShVOList().get(i));
					if(shVO.getShVOList().get(i).getShAyear()!=null && !shVO.getShVOList().get(i).getShAyear().isEmpty()) {
						//logger.info("setResumeNo 전 : shVO.getShVOList().get(i)={}",shVO.getShVOList().get(i));
						
						shVO.getShVOList().get(i).setResumeNo(resumeVoNo);
						
						//logger.info("setResumeNo 후 : shVO.getShVOList().get(i)={}",shVO.getShVOList().get(i));
						
						//logger.info("insertSH 전 shVO.getShVOList().get(i).getResumeNo()={}",shVO.getShVOList().get(i).getResumeNo());
						
						shCnt = resumeService.insertSH(shVO.getShVOList().get(i));
						
						logger.info("학력 등록 결과 shCnt={}",shCnt);
					}
				}
			}		
			
			
			// 교육 사항 ( 추가 선택 사항 )
			if(ehVO.getEhVOList()!=null) {
				logger.info("ehVO.getEhVOList().size()={}",ehVO.getEhVOList().size());
				
				
				for(int i=0; i<ehVO.getEhVOList().size(); i++) {
					
					logger.info("ehVO.getEhVOList().get(i)={}",ehVO.getEhVOList().get(i));
					
					if(ehVO.getEhVOList().get(i).getEhCsname()!=null && !ehVO.getEhVOList().get(i).getEhCsname().isEmpty()) {
						
						ehVO.getEhVOList().get(i).setResumeNo(resumeVoNo);							
						
						ehCnt = resumeService.insertEH(ehVO.getEhVOList().get(i));
						
						logger.info("교육 등록 결과 ehCnt={}",ehCnt);
					}
				}
			}
			
			// 대외 활동
			if(actVO.getActVOList()!=null) {
				
				logger.info("대외활동 사이즈,actVO.getActVOList().size()={}",actVO.getActVOList().size());
				
				
				for(int i=0; i<actVO.getActVOList().size(); i++) {
					
					logger.info("actVO.getActVOList().get(i)={}",actVO.getActVOList().get(i));
					
					if(actVO.getActVOList().get(i).getActHistory() != null && !actVO.getActVOList().get(i).getActHistory().isEmpty()) {
						
						actVO.getActVOList().get(i).setResumeNo(resumeVoNo);
						
						logger.info("대외활동 insert 전 . actVO.getActVOList().get(i)={}",actVO.getActVOList().get(i));
						
						String str = actVO.getActVOList().get(i).getActHistory();
						
						str = str.replaceAll("\r\n", "<br>");
						
						actVO.getActVOList().get(i).setActHistory(str);
						
						actCnt = resumeService.insertAct(actVO.getActVOList().get(i));
						
						logger.info("대외활동 등록 결과 actCnt={}",actCnt);
					}
				}
			}
			
			
			// 자격증 / 어학 / 수상
			if(cerVO.getCerVOList()!=null) {
				
				logger.info("자격증/어학/수상 사이즈,cerVO.getCerVOList().size()={}",cerVO.getCerVOList().size());
				
				for(int i=0; i<cerVO.getCerVOList().size(); i++) {
					
					logger.info("cerVO.getCerVOList().get(i)={}",cerVO.getCerVOList().get(i));
					
					if(cerVO.getCerVOList().get(i).getCerName() != null && !cerVO.getCerVOList().get(i).getCerName().isEmpty()) {
						
						cerVO.getCerVOList().get(i).setResumeNo(resumeVoNo);
						
						if(cerVO.getCerVOList().get(i).getCerAcceptScore() == null || cerVO.getCerVOList().get(i).getCerAcceptScore().isEmpty()) {
							cerVO.getCerVOList().get(i).setCerAcceptScore("-");
						}
						
						logger.info("자격증 insert 전 . cerVO.getCerVOList().get(i)={}",cerVO.getCerVOList().get(i));
						cerCnt = resumeService.insertCer(cerVO.getCerVOList().get(i));
						
						logger.info("자격증/어학/수상 등록 결과 cerCnt={}",cerCnt);
					}
				}
			}
			
			
			
			// 보유 기술 및 능력
			if(skillVO.getSkillVOList()!=null) {
				
				logger.info("보유기술 사이즈,skillVO.getSkillVOList().size()={}",skillVO.getSkillVOList().size());
				
				for(int i=0; i<skillVO.getSkillVOList().size(); i++) {
					
					logger.info("skillVO.getSkillVOList().get(i)={}",skillVO.getSkillVOList().get(i));
					
					if(skillVO.getSkillVOList().get(i).getSkillAbility() != null && !skillVO.getSkillVOList().get(i).getSkillAbility().isEmpty()) {
						
						skillVO.getSkillVOList().get(i).setResumeNo(resumeVoNo);
						
						String str = skillVO.getSkillVOList().get(i).getSkillDetail();
						
						str = str.replaceAll("\r\n", "<br>");
						
						skillVO.getSkillVOList().get(i).setSkillDetail(str);
						
						skillCnt = resumeService.insertSkill(skillVO.getSkillVOList().get(i));
						
						logger.info("보유기술 및 능력 등록 결과 skillCnt={}",skillCnt);
					}
				}
			}
			
			int introCnt = 0;
			// 자기소개서
			if(introVO.getIntroVOList()!=null) {
				
				logger.info("자기소개서 사이즈,introVO.getIntroVOList().size()={}",introVO.getIntroVOList().size());
				
				for(int i=0; i<introVO.getIntroVOList().size(); i++) {
					
					logger.info("introVO.getIntroVOList().get(i)={}",introVO.getIntroVOList().get(i));
					
					if(introVO.getIntroVOList().get(i).getIntroTitle() != null && !introVO.getIntroVOList().get(i).getIntroTitle().isEmpty()) {
						
						introVO.getIntroVOList().get(i).setResumeNo(resumeVoNo);
						
						String str = introVO.getIntroVOList().get(i).getIntroContent();
						
						str = str.replaceAll("\r\n", "<br>");
						
						introVO.getIntroVOList().get(i).setIntroContent(str);
				
						introCnt = resumeService.insertIntro(introVO.getIntroVOList().get(i));
						
						logger.info("자기소개서 등록 결과 introCnt={}",introCnt);
					}
				}
			}
			
			
			msg="이력서 등록 완료.";
			url="/resume/resumeList.do";
		}else {
			msg="이력서 등록 실패";
			url="/resume/resumeInsert.do";
		}

		model.addAttribute("msg", msg);
		model.addAttribute("url", url);			
		
		
		
		
		
		
		
	
	
		return "common/message";
	}
	
	

	@RequestMapping("/resumeList.do")
	public String resumeList(HttpServletRequest request,HttpSession session,Model model) {
		logger.info("내 이력서 리스트보기");
		
		String memEmail = "test";
		
		session = request.getSession();
		
		MemberVO memberVO = (MemberVO) session.getAttribute("memberVO");
		
		List<ResumeVO> list = resumeService.selectAllMyResume(memberVO.getMemNo());
		logger.info("내 이력서 사이즈, list.size()={}",list.size());
		model.addAttribute("list", list);
		
		return "resume/resumeList";
	}
	
	
	@RequestMapping("/resumeView.do")
	public String resumeView(@RequestParam(defaultValue="0")int resumeNo,Model model) {
		logger.info("내 이력서 상세보기");
		
		Map<String,Object> map = resumeService.selectResumeByResumeNo(resumeNo);
		
		Date d = (Date) map.get("RESUME_BIRTH");
		
		Calendar cal = Calendar.getInstance();
		
		int currentYear = cal.get(Calendar.YEAR);
		int currentMonth = cal.get(Calendar.MONTH)+1;
		int currentDay = cal.get(Calendar.DAY_OF_MONTH);
		
		cal.setTime(d);
		
		int birthYear = cal.get(Calendar.YEAR);
		int birthMonth = cal.get(Calendar.MONTH)+1;
		int birthDay = cal.get(Calendar.DAY_OF_MONTH);
		
		int age = currentYear - birthYear;
		
		 if (birthMonth * 100 + birthDay > currentMonth * 100 + currentDay) {
			 age--;			 
		 }
		
		 List<SchoolHistoryVO> shList = resumeService.selectSHByResumeNo(resumeNo);
		 logger.info("학력 가져오기 사이즈, shList.size()={}",shList.size());
		 
		 List<EduHistoryVO> ehList = resumeService.selectEHByResumeNo(resumeNo);
		 logger.info("교육 가져오기 사이즈, ehList.size()={}",ehList.size());
		 
		 List<ActivitiesVO> actList = resumeService.selectActByResumeNo(resumeNo);
		 logger.info("대외활동 가져오기 사이즈, actList.size()={}",actList.size());
		 
		 List<CertificateVO> cerList = resumeService.selectCerByResumeNo(resumeNo);
		 logger.info("자격증 가져오기 사이즈, cerList.size()={}",cerList.size());
		 
		 List<SkillVO> skillList = resumeService.selectSkillByResumeNo(resumeNo);
		 logger.info("보유기술 가져오기 사이즈, skillList.size()={}",skillList.size());
		
		 List<IntroductionVO> introList = resumeService.selectIntroByResumeNo(resumeNo);
		 logger.info("자소서 가져오기 사이즈, introList.size()={}",introList.size());
		 
		 List<PortfolioVO> portList = resumeService.selectPortByResumeNo(resumeNo);
		 logger.info("포트폴리오 가져오기 사이즈, portList.size()={}",portList.size());
		 
		model.addAttribute("age", age);
		model.addAttribute("map", map);
		model.addAttribute("shList", shList);
		model.addAttribute("ehList", ehList);
		model.addAttribute("actList", actList);
		model.addAttribute("cerList", cerList);
		model.addAttribute("skillList", skillList);
		model.addAttribute("introList", introList);
		model.addAttribute("portList", portList);
		
		return "resume/resumeView";
	}

	
}
