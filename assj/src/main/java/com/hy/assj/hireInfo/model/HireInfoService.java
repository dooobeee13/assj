package com.hy.assj.hireInfo.model;

import java.util.List;
import java.util.Map;

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

public interface HireInfoService {

	//지역
	Map<String, List<AreaVO>> getAreaListMap();
	
	//직종
	List<OccupationVO> getOccupationList();
	
	//업종
	List<SectorsVO> getSectorsList();
	
	//전공
	List<MajorVO> getMajorList();

	//고용형태
	List<EmpTypeVO> getEmpTypeList();
	
	//학력
	List<EducationVO> getEducationList();
	
	//경력
	List<CareerVO> getCareerList();
	
	//직급
	List<RankVO> getRankList();
	
	//직책
	List<PositionVO> getPositionList();

	//기업규모
	List<CompScaleVO> getCompScaleList();
	
}
