package com.hy.assj.hirenoti.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
	@Transactional
	public int insertHireNoti(HireNotiVO vo) {
		int cnt = hirenotiDao.insertHireNoti(vo);
		Map<String, Object> map = new HashMap<>();
		map.put("hnNo", vo.getHnNo());
		List<Integer> list = null;
		list = vo.getMajorList();
		if (list != null) {
			map.put("majorList", list);
			hirenotiDao.insertMajor(map);
		}
		list = vo.getRankList();
		if (list != null) {
			map.put("rankList", list);
			hirenotiDao.insertRank(map);
		}
		list = vo.getOccuList();
		if (list != null) {
			map.put("occuList", list);
			hirenotiDao.insertOccupation(map);
		}
		list = vo.getSectorList();
		if (list != null) {
			map.put("secList", list);
			hirenotiDao.insertSector(map);
		}
		list = vo.getEmpTypeList();
		if (list != null) {
			map.put("etList", list);
			hirenotiDao.insertEmpType(map);
		}
		list = vo.getPositionList();
		if (list != null) {
			map.put("posList", list);
			hirenotiDao.insertPosition(map);
		}
		
		return cnt;
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
