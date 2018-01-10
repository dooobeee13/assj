package com.hy.assj.administrator.model;

import java.util.List;
import java.util.Map;

import com.hy.assj.common.SearchVO;
import com.hy.assj.question.model.QuestionVO;
import com.hy.assj.question.model.QuestionViewVO;
import com.hy.assj.vo.NewsVO;

public interface AdminDAO {
	public int insertNews(NewsVO vo);
	
	public List<Map<String, Object>> selectNews();
	
	public NewsVO selectByNo(int newsNo);
	
	public int updateNews(NewsVO vo);
	
	public int deleteNews(int newsNo);
	
	public String selectAdminLogin(String userid);
	
	public int CreateAdmin(Map<String, Object> list);
	
	public int insertChat(Map<String, Object> list);
	
	public List<Map<String, Object>> selectLastChat();
	
	public List<Map<String, Object>> selectByLastChatNo(int lastNo);
	
	public Map<String, Object> selectLastNo();

	public List<Map<String, Object>> questionList(SearchVO searchVo);
	
	public int questionListTotal();
	
	public int questionDelete(int no);
	
	public QuestionViewVO selectByquestion(int no);
	
	public int UpdateReplyFlag(int no);
	
	public Map<String, Object> selectAdminInfo(String userid);
}
