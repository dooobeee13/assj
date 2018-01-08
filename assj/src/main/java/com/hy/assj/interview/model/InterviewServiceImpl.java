package com.hy.assj.interview.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class InterviewServiceImpl implements InterviewService{
	
	@Autowired
	private InterviewDAO interDao;
	
	@Override
	public List<Map<String, Object>> selectInview(int cmNo) {
		return interDao.selectInview(cmNo);
	}

	@Override
	public List<Map<String, Object>> selectByHireNotice(int cmNo) {
		return interDao.selectByHireNotice(cmNo);
	}

	@Override
	public List<Map<String, Object>> selectEmpSupbyHN(int hnNo) {
		return interDao.selectEmpSupbyHN(hnNo);
	}

	@Override
	public int insertInterview(Map<String, Object> list) {
		return interDao.insertInterview(list);
	}

	@Override
	public int updateInterviewerStatus(Map<String, Object> list) {
		return interDao.updateInterviewerStatus(list);
	}

	@Override
	public List<Map<String, Object>> selectCalendar(int hnNo) {
		return interDao.selectCalendar(hnNo);
	}

	@Override
	public int interviewCount() {
		return interDao.interviewCount();
	}
	
}
