package com.hy.assj.freeboard.model;

import java.util.List;
import java.util.Map;

public interface FreeBoardService {
	
	int insertFB(FreeBoardVO fbVO);
	
	Map<String,Object> selectFB(int fbNo);
	
	List<Map<String,Object>> selectAllFB();
	
	FreeBoardVO selectFBByNo(int fbNo);
	
	int updateFB(FreeBoardVO fbVO);
	
	int deleteFB(int fbNo);

}
