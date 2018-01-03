package com.hy.assj.hirenoti.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hy.assj.common.SearchVO;
import com.hy.assj.vo.CareerVO;
import com.hy.assj.vo.EducationVO;
import com.hy.assj.vo.EmpTypeVO;
import com.hy.assj.vo.MajorVO;
import com.hy.assj.vo.OccupationVO;
import com.hy.assj.vo.PositionVO;
import com.hy.assj.vo.RankVO;
import com.hy.assj.vo.SectorsVO;

@Service
public class HireNotiServiceImpl implements HireNotiService{
	
	@Autowired
	private HireNotiDAO hirenotiDao;

	@Override
	public int insertHireNoti(HireNotiVO vo) {
		
		return hirenotiDao.insertHireNoti(vo);
	}

	@Override
	public List<HireNotiVO> selectAll(SearchVO searchVo) {
		
		return hirenotiDao.selectAll(searchVo);
	}

	@Override
	public List<CareerVO> selectCareerAll() {
		return hirenotiDao.selectCareerAll();
	}

	@Override
	public List<EmpTypeVO> selectEmpTypeAll() {
		return hirenotiDao.selectEmpTypeAll();
	}

	@Override
	public List<RankVO> selectRankAll() {
		return hirenotiDao.selectRankAll();
	}

	@Override
	public List<MajorVO> selectMajorAll() {
		List<MajorVO> list = hirenotiDao.selectMajorAll();
		 return list;
	}

	@Override
	public List<OccupationVO> selectOccupationAll() {
		
		return hirenotiDao.selectOccupationAll();
	}

	@Override
	public List<SectorsVO> selectSectorsAll() {
		return hirenotiDao.selectSectorsAll();
	}

	@Override
	public List<EducationVO> selectEducationAll() {
		return hirenotiDao.selectEducationAll();
	}

	@Override
	public List<PositionVO> selectPositionAll() {
		return hirenotiDao.selectPositionAll();
	}	
}
