package com.hy.assj.hireNotiManagement.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hy.assj.cmMember.model.CEsWithResumeVO;
import com.hy.assj.cmMember.model.CmMemberDAO;
import com.hy.assj.cmMember.model.HireNotiWithEsAndResumeVO;

@Service
public class HireNotiManagementServiceImpl implements HireNotiManagementService {

	@Autowired
	private CmMemberDAO cmMemberDao;
	
	@Override
	public List<HireNotiWithEsAndResumeVO> getMyHireNoti(int cmNo) {
		List<HireNotiWithEsAndResumeVO> list = cmMemberDao.selectHireNotiByCmNo(cmNo);
		return list;
	}

	@Override
	public HireNotiWithEsAndResumeVO getHireNotiByhnNo(int hnNo) {
		return cmMemberDao.selectHireNotiByHnNo(hnNo);
	}

	@Override
	public List<HireNotiWithEsAndResumeVO> getHnSummary(int cmNo) {
		return cmMemberDao.selectHnSummary(cmNo);
	}

	@Override
	public int updateEmpSup(int esNo, String status) {
		return cmMemberDao.updateEmpSup(esNo, status);
	}

	@Override
	public HireNotiWithEsAndResumeVO getLatestHnNo(int cmNo) {
		return cmMemberDao.selectlatestHnNo(cmNo);
	}
	
	public ApplicantStatByHnDTO calStats(HireNotiWithEsAndResumeVO vo) {
		int hnNo = vo.getHnNo();
		List<CEsWithResumeVO> esWithResumeList = vo.getcEsWithResumeList();
		int totalCnt = esWithResumeList.size();
		int dontReadCnt = 0;
		int underReviewCnt = 0;
		int passPaperCnt = 0;
		int failCnt = 0;
		int manCnt = 0;
		int womenCnt = 0;
		
		int e20 = 0;
		int b21e25 = 0;
		int b26e30 = 0;
		int b31e35 = 0;
		int b36e40 = 0;
		int b41e45 = 0;
		int b46e50 = 0;
		int b51 = 0;
		
		int highSchool = 0;
		int college = 0;
		int university = 0;
		int master = 0;
		int doctor = 0;
		
		int c0 = 0;
		int c1to3 = 0;
		int c3to5 = 0;
		int c5to10 = 0;
		int c10 = 0;
		
		int sal0 = 0;
		int sal1800 = 0;
		int sal2200 = 0;
		int sal2600 = 0;
		int sal3000 = 0;
		int sal3400 = 0;
		int sal4000 = 0;
		int sal4000up = 0;
		for (CEsWithResumeVO esWithResume : esWithResumeList) {
			String status = esWithResume.getStatus(); 
			if (status == null) {
				dontReadCnt += 1;
			} else if (status.equals("검토중")) {
				underReviewCnt += 1;
			} else if (status.equals("서류합격")) {
				passPaperCnt += 1;
			} else if (status.equals("불합격")) {
				failCnt += 1;
			} 
			
			if (esWithResume.getGender().equals("남")) {
				manCnt += 1;
			} else {
				womenCnt += 1;
			}
			
			int age = esWithResume.getAge();
			if (age <= 20) {
				e20 += 1;
			} else if (age <= 25) {
				b21e25 += 1;
			} else if (age <= 30) {
				b26e30 += 1;
			} else if (age <= 35) {
				b31e35 += 1;
			} else if (age <= 40) {
				b36e40 += 1;
			} else if (age <= 45) {
				b41e45 += 1;
			} else if (age <= 50) {
				b46e50 += 1;
			} else {
				b51 += 1;
			}
			
			int eduNo = esWithResume.getEduNo(); 
			if (eduNo == 2) {
				college += 1;
			} else if (eduNo == 3) {
				university += 1;
			} else if (eduNo == 4) {
				master += 1;
			} else if (eduNo == 5) {
				doctor += 1;
			} else {
				highSchool += 1;
			}
			
			int careerNo = esWithResume.getCareerNo();
			if (careerNo == 0 || careerNo == 1) {
				c0 += 1;
			} else {
				//년차 계산
			}
			
			int sal = esWithResume.getSalEnd();
			if (sal == 0) {
				sal0 += 1;
			} else if (sal < 1800) {
				sal1800 += 1;
			} else if (sal < 2200) {
				sal2200 += 1;
			} else if (sal < 2600) {
				sal2600 += 1;
			} else if (sal < 3000) {
				sal3000 += 1;
			} else if (sal < 3400) {
				sal3400 += 1;
			} else if (sal < 4000) {
				sal4000 += 1;
			} else {
				sal4000up += 1;
			}
		}
		
		return new ApplicantStatByHnDTO(hnNo, totalCnt, dontReadCnt, underReviewCnt, passPaperCnt, failCnt, manCnt, womenCnt, e20, b21e25, b26e30, b31e35, b36e40, b41e45, b46e50, b51, highSchool, college, university, master, doctor, c0, c1to3, c3to5, c5to10, c10, sal0, sal1800, sal2200, sal2600, sal3000, sal3400, sal4000, sal4000up);
	}
	
}
