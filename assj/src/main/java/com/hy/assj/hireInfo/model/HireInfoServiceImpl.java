package com.hy.assj.hireInfo.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

@Service
public class HireInfoServiceImpl implements HireInfoService {

	@Autowired
	private HireInfoDAO hireInfoDao;

	@Override
	public Map<String, List<AreaVO>> getAreaListMap() {
		List<AreaVO> areaList = hireInfoDao.selectArea();
		Map<String, List<AreaVO>> map = new HashMap<>();
		map.put("topCategory", new ArrayList<>());
		for (AreaVO vo : areaList) {
			if (vo.getAreaTopNo() == 0) {
				map.get("topCategory").add(vo);
				map.put("subCategory-" + vo.getAreaNo(), new ArrayList<>());
			} else {
				try {
					map.get("subCategory-" + vo.getAreaTopNo()).add(vo);
				} catch (NullPointerException e) {}
			}
		}
		return map;
	}

	@Override
	public List<OccupationVO> getOccupationList() {
		return hireInfoDao.selectOccupation();
	}

	@Override
	public List<SectorsVO> getSectorsList() {
		return hireInfoDao.selectSectors();
	}

	@Override
	public List<MajorVO> getMajorList() {
		return hireInfoDao.selectMajor();
	}

	@Override
	public List<EmpTypeVO> getEmpTypeList() {
		return hireInfoDao.selectEmpType();
	}

	@Override
	public List<EducationVO> getEducationList() {
		return hireInfoDao.selectEducation();
	}

	@Override
	public List<CareerVO> getCareerList() {
		return hireInfoDao.selectCareer();
	}

	@Override
	public List<RankVO> getRankList() {
		return hireInfoDao.selectRank();
	}

	@Override
	public List<PositionVO> getPositionList() {
		return hireInfoDao.selectPosition();
	}

	@Override
	public List<CompScaleVO> getCompScaleList() {
		return hireInfoDao.selectCompScale();
	}
	
	
	
	
}
