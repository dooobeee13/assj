package com.hy.assj.hireInfo.model;

import java.util.List;
import java.util.Map;

import com.hy.assj.recruit.model.RHireNotiVO;
import com.hy.assj.recruit.model.RSearchValue;
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
	Map<String, List<OccupationVO>> getOccupationListMap();
	//업종
	Map<String, List<SectorsVO>> getSectorsListMap();
	//전공
	Map<String, List<MajorVO>> getMajorListMap();
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
	
	//채용공고 검색
	List<RHireNotiVO> searchHireNoti(RSearchValue searchValue);
	
}
