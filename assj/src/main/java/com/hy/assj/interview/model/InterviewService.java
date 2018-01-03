package com.hy.assj.interview.model;

import java.util.List;
import java.util.Map;

public interface InterviewService {
	public List<Map<String, Object>> selectInview(int cmNo);
}
