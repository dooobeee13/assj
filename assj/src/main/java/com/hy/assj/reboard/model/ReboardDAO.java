package com.hy.assj.reboard.model;

import java.util.List;
import java.util.Map;

import com.hy.assj.common.SearchVO;


public interface ReboardDAO {
	public int insertQnA(ReboardVO reboardVO);
	public List<ReboardVO> QnaList(SearchVO searchVO);
	public int updateReadCount(int no);
	public ReboardVO selectByNo(int no);
	public int updateQnA(ReboardVO reboardVO);
	public List<ReboardVO> selectAll(SearchVO searchVo);
	public List<Map<String,Object>> QnaRownum();
	public int selectTotalRecordCount(SearchVO searchVo);
	public void deleteReBoard(Map<String, String> map);
	public int updateSortNo(ReboardVO vo);
	public int replyReboard(ReboardVO vo);
	public int groupDelete(int no);
	public int solDelete(int no);
}
