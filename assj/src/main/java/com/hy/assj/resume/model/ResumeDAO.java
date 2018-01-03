package com.hy.assj.resume.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.hy.assj.vo.AreaVO;
import com.hy.assj.vo.EmpTypeVO;
import com.hy.assj.vo.MajorVO;
import com.hy.assj.vo.OccupationVO;
import com.hy.assj.vo.SectorsVO;

public interface ResumeDAO {
	
	List<AreaVO> selectAllAreaTop();
	
	List<AreaVO> selectAllAreaDetail(int no);
	
	List<AreaVO> selectBasicArea();
		
	List<MajorVO> selectAllMajorTop();
	
	List<MajorVO> selectAllMajorDetail(int no);
	
	List<MajorVO> selectMajorBasicD();
	
	List<EmpTypeVO> selectAllET();
	
	List<SectorsVO> selectAllSectorsTop();
	
	List<SectorsVO> selectAllSectorsDetail(int no);
	
	List<OccupationVO> selectAllOccuTop();
	
	List<OccupationVO> selectAllOccuDetail(int no);
	
	List<OccupationVO> selectBasicOccu();
	
	List<SectorsVO> selectBasicSec();	
	
	int insertResume(ResumeVO resumeVO);
	
	List<ResumeVO> selectAllMyResume(int memNo);
	
	int selectMemNoByEmail(String memEmail);
	
	
	
	// 학력	
	int insertSH(SchoolHistoryVO shVO);
	// 교육
	int insertEH(EduHistoryVO ehVO);
	//대외활동
	int insertAct(ActivitiesVO actVO);
	//자격증
	int insertCer(CertificateVO cerVO);
	// 보유기술
	int insertSkill(SkillVO skillVO);
	// 포트폴리오
	int insertPF(PortfolioVO pfVO);
	// 자기소개서
	int insertIntro(IntroductionVO introVO);

}
