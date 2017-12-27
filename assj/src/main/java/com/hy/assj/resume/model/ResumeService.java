package com.hy.assj.resume.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.hy.assj.vo.AreaVO;
import com.hy.assj.vo.EmpTypeVO;
import com.hy.assj.vo.MajorVO;
import com.hy.assj.vo.OccupationVO;
import com.hy.assj.vo.SectorsVO;

public interface ResumeService {

	List<AreaVO> selectAllAreaTop();
	
	List<AreaVO> selectAllAreaDetail(int no);
	
	List<MajorVO> selectAllMajorTop();
	
	List<MajorVO> selectAllMajorDetail(int no);
	
	List<EmpTypeVO> selectAllET();
	
	List<SectorsVO> selectAllSectorsTop();
	
	List<SectorsVO> selectAllSectorsDetail(int no);
	
	List<OccupationVO> selectAllOccuTop();
	
	List<OccupationVO> selectAllOccuDetail(int no);
	
	int insertResume1(HashMap<String, Object> map);
	
	int insertResume(ResumeVO resumeVO);
	
	List<ResumeVO> selectAllMyResume(int memNo);
	
	int selectMemNoByEmail(String memEmail);
	
}
