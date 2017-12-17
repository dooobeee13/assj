package com.hy.assj.hireInfo.model;

import java.util.List;

public interface HireInfoDAO {

	//지역
	List<AreaVO> selectTopArea();
	List<AreaVO> selectArea();
	
	//직종
	List<OccupationVO> selectOccupation();
	
	//업종
	List<SectorsVO> selectSectors();
	
	//전공
	List<MajorVO> selectMajor();

	//고용형태
	List<EmpTypeVO> selectEmpType();
	
	//학력
	List<EducationVO> selectEducation();
	
	//경력
	List<CareerVO> selectCareer();
	
	//직급
	List<RankVO> selectRank();
	
	//직책
	List<PositionVO> selectPosition();

	//기업규모
	List<CompScaleVO> selectCompScale();
	
	
	
}
