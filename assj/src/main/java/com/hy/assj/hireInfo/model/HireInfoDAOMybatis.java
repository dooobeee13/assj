package com.hy.assj.hireInfo.model;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.hy.assj.vo.AreaVO;
import com.hy.assj.vo.CareerVO;
import com.hy.assj.vo.CompScaleVO;
import com.hy.assj.vo.EducationVO;
import com.hy.assj.vo.EmpTypeVO;
import com.hy.assj.vo.MajorVO;
import com.hy.assj.vo.OccupationVO;
import com.hy.assj.vo.PositionVO;
import com.hy.assj.vo.RankVO;
import com.hy.assj.vo.SectorsVO;

@Repository
public class HireInfoDAOMybatis extends SqlSessionDaoSupport implements HireInfoDAO {

	private final String namespace = "config.mybatis.mapper.oracle.hireInfo";
	
	@Override
	public List<AreaVO> selectTopArea() {
		return getSqlSession().selectList(namespace + ".selectTopArea");
	}

	@Override
	public List<AreaVO> selectArea() {
		return getSqlSession().selectList(namespace + ".selectArea");
	}

	@Override
	public List<OccupationVO> selectOccupation() {
		return getSqlSession().selectList(namespace + ".selectOccupation");
	}

	@Override
	public List<SectorsVO> selectSectors() {
		return getSqlSession().selectList(namespace + ".selectSectors");
	}

	@Override
	public List<MajorVO> selectMajor() {
		return getSqlSession().selectList(namespace + ".selectMajor");
	}

	@Override
	public List<EmpTypeVO> selectEmpType() {
		return getSqlSession().selectList(namespace + ".selectEmpType");
	}

	@Override
	public List<EducationVO> selectEducation() {
		return getSqlSession().selectList(namespace + ".selectEducation");
	}

	@Override
	public List<CareerVO> selectCareer() {
		return getSqlSession().selectList(namespace + ".selectCareer");
	}

	@Override
	public List<RankVO> selectRank() {
		return getSqlSession().selectList(namespace + ".selectRank");
	}

	@Override
	public List<PositionVO> selectPosition() {
		return getSqlSession().selectList(namespace + ".selectPosition");
	}

	@Override
	public List<CompScaleVO> selectCompScale() {
		return getSqlSession().selectList(namespace + ".selectCompScale");
	}

}
