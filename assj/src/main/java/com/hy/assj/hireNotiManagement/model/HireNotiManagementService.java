package com.hy.assj.hireNotiManagement.model;

import java.util.List;

import com.hy.assj.cmMember.model.HireNotiWithEsAndResumeVO;

public interface HireNotiManagementService {

	List<HireNotiWithEsAndResumeVO> getMyHireNoti(int cmNo);
	HireNotiWithEsAndResumeVO getHireNotiByhnNo(int hnNo);
	List<HireNotiWithEsAndResumeVO> getHnSummary(int cmNo);
	int updateEmpSup(int esNo, String status);
	HireNotiWithEsAndResumeVO getLatestHnNo(int cmNo);
	ApplicantStatByHnDTO calStats(HireNotiWithEsAndResumeVO vo);
}
