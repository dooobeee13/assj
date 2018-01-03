package com.hy.assj.hirenoti.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.hy.assj.common.SearchVO;
import com.hy.assj.vo.CareerVO;
import com.hy.assj.vo.EducationVO;
import com.hy.assj.vo.EmpTypeVO;
import com.hy.assj.vo.HnEtVO;
import com.hy.assj.vo.HnMajorVO;
import com.hy.assj.vo.HnOccuVO;
import com.hy.assj.vo.HnPosVO;
import com.hy.assj.vo.HnRankVO;
import com.hy.assj.vo.HnSecVO;
import com.hy.assj.vo.MajorVO;
import com.hy.assj.vo.OccupationVO;
import com.hy.assj.vo.PositionVO;
import com.hy.assj.vo.RankVO;
import com.hy.assj.vo.SectorsVO;

@Repository
public class HireNotiDAOMybatis extends SqlSessionDaoSupport implements HireNotiDAO{

	private String namespace="config.mybatis.mapper.oracle.hireNoti";
	
	@Override
	public int insertHireNoti(HireNotiVO vo) {
		
		return getSqlSession().insert(namespace+".insertHireNoti",vo);
	}

	@Override
	public List<HireNotiVO> selectAll(SearchVO searchVo) {
		
		return getSqlSession().selectList(namespace+".selectAll",searchVo);
	}

	@Override
	public List<CareerVO> selectCareerAll() {
		return getSqlSession().selectList(namespace + ".careerList");
	}

	@Override
	public List<EmpTypeVO> selectEmpTypeAll() {
		return getSqlSession().selectList(namespace + ".empTypeList");
	}

	@Override
	public List<RankVO> selectRankAll() {
		return getSqlSession().selectList(namespace + ".rankList");
	}

	@Override
	public List<MajorVO> selectMajorAll() {
		return getSqlSession().selectList(namespace + ".majorList");
	}

	@Override
	public List<OccupationVO> selectOccupationAll() {
		
		return getSqlSession().selectList(namespace+".occupationList");
	}

	@Override
	public List<SectorsVO> selectSectorsAll() {
		return getSqlSession().selectList(namespace+".sectorsList");
	}

	@Override
	public List<EducationVO> selectEducationAll() {
		return getSqlSession().selectList(namespace+".educationList");
	}

	@Override
	public List<PositionVO> selectPositionAll() {
		return getSqlSession().selectList(namespace+".positionList");
	}

	@Override
	public int insertMajor(Map<String, Object> map) {
		return getSqlSession().update(namespace + ".insertMajor", map);
	}

	@Override
	public int insertRank(Map<String, Object> map) {
		return getSqlSession().insert(namespace + ".insertRank", map);
	}

	@Override
	public int insertOccupation(Map<String, Object> map) {
		return getSqlSession().insert(namespace + ".insertOccu", map);
	}

	@Override
	public int insertSector(Map<String, Object> map) {
		return getSqlSession().insert(namespace + ".insertSec", map);
	}

	@Override
	public int insertEmpType(Map<String, Object> map) {
		return getSqlSession().insert(namespace + ".insertEt", map);
	}

	@Override
	public int insertPosition(Map<String, Object> map) {
		return getSqlSession().insert(namespace + ".insertPosition", map);
	}
	
}
