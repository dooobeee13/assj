package com.hy.assj.notice.model;

import java.util.List;
import java.util.Map;

import com.hy.assj.common.SearchVO;



public interface NoticeDAO {
	public List<Map<String,Object>> noticeList(NotiSearchVO vo);
	public int selectTotalRecordCount(NotiSearchVO searchVo);
	public int updateReadCount(int no);
	public Map<String,Object> selectByNo(int no);
	public List<Map<String,Object>> noticeRownum();
	public int insertNotice(NoticeVO noticeVO);
	public int updateNotice(NoticeVO noticeVO);
	public int deleteNotice(int no);
	public Map<String,Object> nextprev(int no);
}
