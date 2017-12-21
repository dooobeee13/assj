package com.hy.assj.TalentManagement.model;

import java.util.List;
import java.util.Map;

public interface TalentManagementDAO {
	public List<Map<Integer, String>> selectRank();
	public List<Map<Integer, String>> selectPosition();
	public List<Map<Integer, String>> selectEmpType();
	public List<Map<String,Object>> selectSectors();
	public List<Map<String, Object>> selectArea();
	public List<Map<String, Object>> selectEducation();
	public List<Map<String, Object>> selectOccupation();
	public List<Map<String, Object>> selectResume(TalentManagementVO vo);
}
