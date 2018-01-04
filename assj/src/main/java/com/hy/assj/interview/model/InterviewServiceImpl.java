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
	
}
