package com.hy.assj.administrator.model;

import java.util.List;
import java.util.Map;

import com.hy.assj.vo.NewsVO;

public interface AdminService {
	int LOGIN_OK=1;
	int NOT_EXITST=2;
	int PWD_DISAGREE=3;
	
	public int insertNews(NewsVO vo);
	public List<Map<String, Object>> selectNews();
	public NewsVO selectByNo(int newsNo);
	public int updateNews(NewsVO vo);
	public int deleteNews(int newsNo);
	public int selectAdminLogin(String userid,String pwd);
	public int CreateAdmin(Map<String, Object> list);
	public int insertChat(Map<String, Object> list);
	public List<Map<String, Object>> selectLastChat();
	public List<Map<String, Object>> selectByLastChatNo(int lastNo);
}
