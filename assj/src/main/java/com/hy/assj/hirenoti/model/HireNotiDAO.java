package com.hy.assj.hirenoti.model;

import java.util.List;
import java.util.Map;

import com.hy.assj.common.SearchVO;
import com.hy.assj.vo.CareerVO;
import com.hy.assj.vo.EducationVO;
import com.hy.assj.vo.EmpTypeVO;
import com.hy.assj.vo.MajorVO;
import com.hy.assj.vo.OccupationVO;
import com.hy.assj.vo.PositionVO;
import com.hy.assj.vo.RankVO;
import com.hy.assj.vo.SectorsVO;

public interface HireNotiDAO {
	public int insertHireNoti(HireNotiVO vo);
	public List<HireNotiVO> selectAll(SearchVO searchVo);
	
	//카테고리 얻기
	public List<CareerVO> selectCareerAll();
	public List<EmpTypeVO> selectEmpTypeAll();
	public List<RankVO> selectRankAll();
	public List<MajorVO> selectMajorAll();
	public List<OccupationVO> selectOccupationAll();
	public List<SectorsVO> selectSectorsAll();
	public List<EducationVO> selectEducationAll();
	public List<PositionVO> selectPositionAll();
	public List<Map<String, Object>> selecthireNoti(int cmNo);
	
	int insertMajor(Map<String, Object> map);
	int insertRank(Map<String, Object> map);
	int insertOccupation(Map<String, Object> map);
	int insertSector(Map<String, Object> map);
	int insertEmpType(Map<String, Object> map);
	int insertPosition(Map<String, Object> map);
}
