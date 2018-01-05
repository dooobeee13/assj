package com.hy.assj.resume.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.hy.assj.vo.AreaVO;
import com.hy.assj.vo.EmpTypeVO;
import com.hy.assj.vo.MajorVO;
import com.hy.assj.vo.OccupationVO;
import com.hy.assj.vo.SectorsVO;

@Repository
public class ResumeDAOMybatis extends SqlSessionDaoSupport implements ResumeDAO {

	private String namespace="config.mybatis.mapper.oracle.resume";
	
	@Override
	public List<AreaVO> selectAllAreaTop() {
		return getSqlSession().selectList(namespace+".selectAllAreaTop");
	}	

	@Override
	public List<AreaVO> selectAllAreaDetail(int no) {
		return getSqlSession().selectList(namespace+".selectAllAreaDetail", no);
	}

	@Override
	public List<MajorVO> selectAllMajorTop() {
		return getSqlSession().selectList(namespace+".selectAllMajorTop");
	}

	@Override
	public List<MajorVO> selectAllMajorDetail(int no) {
		return getSqlSession().selectList(namespace+".selectAllMajorDetail",no);
	}

	@Override
	public List<EmpTypeVO> selectAllET() {
		return getSqlSession().selectList(namespace+".selectAllEmpType");
	}

	@Override
	public List<SectorsVO> selectAllSectorsTop() {
		return getSqlSession().selectList(namespace+".selectAllSectorsTop");
	}

	@Override
	public List<OccupationVO> selectAllOccuTop() {
		return getSqlSession().selectList(namespace+".selectAllOccuTop");
	}

	@Override
	public List<SectorsVO> selectAllSectorsDetail(int no) {
		return getSqlSession().selectList(namespace+".selectAllSectorsDetail",no);
	}

	@Override
	public List<OccupationVO> selectAllOccuDetail(int no) {
		return getSqlSession().selectList(namespace+".selectAllOccuDetail",no);
	}


	@Override
	public int insertResume(ResumeVO resumeVO) {
		return getSqlSession().insert(namespace+".insertResume", resumeVO);
	}

	@Override
	public List<ResumeVO> selectAllMyResume(int memNo) {
		return getSqlSession().selectList(namespace+".selectAllMyResume", memNo);
	}

	@Override
	public int selectMemNoByEmail(String memEmail) {
		return getSqlSession().selectOne(namespace+".selectMemNoByEmail", memEmail);
	}

	@Override
	public int insertSH(SchoolHistoryVO shVO) {
		return getSqlSession().insert(namespace+".insertSH", shVO);
	}

	@Override
	public List<MajorVO> selectMajorBasicD() {
		return getSqlSession().selectList(namespace+".selectMajorBasicD");
	}

	@Override
	public List<AreaVO> selectBasicArea() {
		return getSqlSession().selectList(namespace+".selectBasicArea");
	}

	@Override
	public List<OccupationVO> selectBasicOccu() {
		return getSqlSession().selectList(namespace+".selectBasicOccu");
	}

	@Override
	public List<SectorsVO> selectBasicSec() {
		return getSqlSession().selectList(namespace+".selectBasicSec");
	}

	@Override
	public int insertEH(EduHistoryVO ehVO) {
		return getSqlSession().insert(namespace+".insertEH", ehVO);
	}

	@Override
	public int insertAct(ActivitiesVO actVO) {
		return getSqlSession().insert(namespace+".insertAct", actVO);
	}

	@Override
	public int insertCer(CertificateVO cerVO) {
		return getSqlSession().insert(namespace+".insertCer", cerVO);
	}

	@Override
	public int insertSkill(SkillVO skillVO) {
		return getSqlSession().insert(namespace+".insertSkill", skillVO);
	}

	@Override
	public int insertPF(PortfolioVO pfVO) {
		return getSqlSession().insert(namespace+".insertPF", pfVO);
	}

	@Override
	public int insertIntro(IntroductionVO introVO) {
		return getSqlSession().insert(namespace+".insertIntro", introVO);
	}

	@Override
	public Map<String,Object> selectResumeByResumeNo(int resumeNo) {
		return getSqlSession().selectOne(namespace+".selectResumeByResumeNo", resumeNo);
	}

	@Override
	public List<SchoolHistoryVO> selectSHByResumeNo(int resumeNo) {
		return getSqlSession().selectList(namespace+".selectSHByResumeNo", resumeNo);
	}

	@Override
	public List<EduHistoryVO> selectEHByResumeNo(int resumeNo) {
		return getSqlSession().selectList(namespace+".selectEHByResumeNo", resumeNo);
	}

	@Override
	public List<ActivitiesVO> selectActByResumeNo(int resumeNo) {
		return getSqlSession().selectList(namespace+".selectActByResumeNo", resumeNo);
	}

	@Override
	public List<CertificateVO> selectCerByResumeNo(int resumeNo) {
		return getSqlSession().selectList(namespace+".selectCerByResumeNo", resumeNo);
	}

	@Override
	public List<SkillVO> selectSkillByResumeNo(int resumeNo) {
		return getSqlSession().selectList(namespace+".selectSkillByResumeNo", resumeNo);
	}

	@Override
	public List<IntroductionVO> selectIntroByResumeNo(int resumeNo) {
		return getSqlSession().selectList(namespace+".selectIntroByResumeNo", resumeNo);
	}

	@Override
	public List<PortfolioVO> selectPortByResumeNo(int resumeNo) {
		return getSqlSession().selectList(namespace+".selectPortByResumeNo", resumeNo);
	}

	@Override
	public ResumeVO selectMyResume(int resumeNo) {
		return getSqlSession().selectOne(namespace+".selectMyResume", resumeNo);
	}

	

	
	
}
