package com.hy.assj.interview.model;

import java.util.List;
import java.util.Map;

public interface InterviewDAO {
	
	public List<Map<String, Object>> selectInview(int cmNo);
	public List<Map<String, Object>> selectByHireNotice(int cmNo);
	public List<Map<String, Object>> selectEmpSupbyHN(int hnNo);
	public int insertInterview(Map<String, Object> list);
	public int updateInterviewerStatus(Map<String, Object> list);
	public List<Map<String, Object>> selectCalendar(int hnNo);
	public int interviewCount();
}
