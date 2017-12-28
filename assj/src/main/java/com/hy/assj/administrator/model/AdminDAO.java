package com.hy.assj.administrator.model;

import java.util.List;
import java.util.Map;

import com.hy.assj.vo.NewsVO;

public interface AdminDAO {
	public int insertNews(NewsVO vo);
	
	public List<Map<String, Object>> selectNews();
}
