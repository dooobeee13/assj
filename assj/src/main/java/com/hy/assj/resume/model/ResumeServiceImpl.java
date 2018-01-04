package com.hy.assj.resume.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hy.assj.vo.AreaVO;
import com.hy.assj.vo.EmpTypeVO;
import com.hy.assj.vo.MajorVO;
import com.hy.assj.vo.OccupationVO;
import com.hy.assj.vo.SectorsVO;

@Service
public class ResumeServiceImpl implements ResumeService {

	@Autowired
	private ResumeDAO resumeDao;
	
	@Override
	public List<AreaVO> selectAllAreaTop() {
		return resumeDao.selectAllAreaTop();
	}	

	@Override
	public List<AreaVO> selectAllAreaDetail(int no) {
		return resumeDao.selectAllAreaDetail(no);
	}

	@Override
	public List<MajorVO> selectAllMajorTop() {
		return resumeDao.selectAllMajorTop();
	}

	@Override
	public List<MajorVO> selectAllMajorDetail(int no) {
		return resumeDao.selectAllMajorDetail(no);
	}

	@Override
	public List<EmpTypeVO> selectAllET() {
		return resumeDao.selectAllET();
	}

	@Override
	public List<SectorsVO> selectAllSectorsTop() {
		return resumeDao.selectAllSectorsTop();
	}

	@Override
	public List<OccupationVO> selectAllOccuTop() {
		return resumeDao.selectAllOccuTop();
	}

	@Override
	public List<SectorsVO> selectAllSectorsDetail(int no) {
		return resumeDao.selectAllSectorsDetail(no);
	}

	@Override
	public List<OccupationVO> selectAllOccuDetail(int no) {
		return resumeDao.selectAllOccuDetail(no);
	}

	

	@Override
	public int insertResume(ResumeVO resumeVO) {
		return resumeDao.insertResume(resumeVO);
	}

	@Override
	public List<ResumeVO> selectAllMyResume(int memNo) {
		return resumeDao.selectAllMyResume(memNo);
	}

	@Override
	public int selectMemNoByEmail(String memEmail) {
		return resumeDao.selectMemNoByEmail(memEmail);
	}

	@Override
	public int insertSH(SchoolHistoryVO shVO) {
		return resumeDao.insertSH(shVO);
	}

	@Override
	public List<MajorVO> selectMajorBasicD() {
		return resumeDao.selectMajorBasicD();
	}

	@Override
	public List<AreaVO> selectBasicArea() {
		return resumeDao.selectBasicArea();
	}

	@Override
	public List<OccupationVO> selectBasicOccu() {
		return resumeDao.selectBasicOccu();
	}

	@Override
	public List<SectorsVO> selectBasicSec() {
		return resumeDao.selectBasicSec();
	}

	@Override
	public int insertEH(EduHistoryVO ehVO) {
		return resumeDao.insertEH(ehVO);
	}

	@Override
	public int insertAct(ActivitiesVO actVO) {
		return resumeDao.insertAct(actVO);
	}

	@Override
	public int insertCer(CertificateVO cerVO) {
		return resumeDao.insertCer(cerVO);
	}

	@Override
	public int insertSkill(SkillVO skillVO) {
		return resumeDao.insertSkill(skillVO);
	}

	@Override
	public int insertPF(PortfolioVO pfVO) {
		return resumeDao.insertPF(pfVO);
	}

	@Override
	public int insertIntro(IntroductionVO introVO) {
		return resumeDao.insertIntro(introVO);
	}

	@Override
	public Map<String,Object> selectResumeByResumeNo(int resumeNo) {
		return resumeDao.selectResumeByResumeNo(resumeNo);
	}

	@Override
	public List<SchoolHistoryVO> selectSHByResumeNo(int resumeNo) {
		return resumeDao.selectSHByResumeNo(resumeNo);
	}

	@Override
	public List<EduHistoryVO> selectEHByResumeNo(int resumeNo) {
		return resumeDao.selectEHByResumeNo(resumeNo);
	}

	@Override
	public List<ActivitiesVO> selectActByResumeNo(int resumeNo) {
		return resumeDao.selectActByResumeNo(resumeNo);
	}

	@Override
	public List<CertificateVO> selectCerByResumeNo(int resumeNo) {
		return resumeDao.selectCerByResumeNo(resumeNo);
	}

	@Override
	public List<SkillVO> selectSkillByResumeNo(int resumeNo) {
		return resumeDao.selectSkillByResumeNo(resumeNo);
	}

	@Override
	public List<IntroductionVO> selectIntroByResumeNo(int resumeNo) {
		return resumeDao.selectIntroByResumeNo(resumeNo);
	}

	@Override
	public List<PortfolioVO> selectPortByResumeNo(int resumeNo) {
		return resumeDao.selectPortByResumeNo(resumeNo);
	}

	

	
	
}
