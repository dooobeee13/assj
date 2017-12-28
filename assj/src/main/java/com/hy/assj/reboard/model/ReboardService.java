package com.hy.assj.reboard.model;

import java.util.List;
import java.util.Map;

import com.hy.assj.common.SearchVO;

public interface ReboardService {
	public int insertQnA(ReboardVO reboardVO);
	public List<ReboardVO> QnaList();
	public int updateReadCount(int no);
	public ReboardVO selectByNo(int no);
	public int updateQnA(ReboardVO reboardVO);
	/*public List<Map<String,Object>> QnaRownum();
	public List<ReboardVO> selectAll(SearchVO searchVo);
	public int selectTotalRecordCount(SearchVO searchVo);*/
}
