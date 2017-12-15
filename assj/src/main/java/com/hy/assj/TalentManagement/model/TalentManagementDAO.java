package com.hy.assj.TalentManagement.model;

import java.util.List;
import java.util.Map;

public interface TalentManagementDAO {
	public List<Map<Integer, String>> selectRank();
	public List<Map<Integer, String>> selectPosition();
}
