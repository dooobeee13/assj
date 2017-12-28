package com.hy.assj.hirenoti.model;

import java.util.List;

import com.hy.assj.common.SearchVO;
import com.hy.assj.vo.CareerVO;
import com.hy.assj.vo.EmpTypeVO;
import com.hy.assj.vo.MajorVO;
import com.hy.assj.vo.OccupationVO;
import com.hy.assj.vo.RankVO;
import com.hy.assj.vo.SectorsVO;

public interface HireNotiService {
	public int insertHireNoti(HireNotiVO vo);
	public List<HireNotiVO> selectAll(SearchVO searchVo);
	
	public List<CareerVO> selectCareerAll();
	public List<EmpTypeVO> selectEmpTypeAll();
	public List<RankVO> selectRankAll();
	public List<MajorVO> selectMajorAll();
	public List<OccupationVO> selectOccupationAll();
	public List<SectorsVO> selectSectorsAll();
}
