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
	public int insertResume1(HashMap<String, Object> map) {
		return getSqlSession().insert(namespace+".insertResume1", map);
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

	
	
}
