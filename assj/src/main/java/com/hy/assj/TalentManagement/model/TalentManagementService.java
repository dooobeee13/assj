package com.hy.assj.TalentManagement.model;

import java.util.List;
import java.util.Map;

public interface TalentManagementService {
	public List<Map<Integer, String>> selectRank();
	
	public List<Map<Integer, String>> selectPosition();
	
	public List<Map<Integer, String>> selectEmpType();
}
