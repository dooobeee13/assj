package com.hy.assj.administrator.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hy.assj.vo.NewsVO;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private AdminDAO adminDao;
	
	@Override
	public int insertNews(NewsVO vo) {
		return adminDao.insertNews(vo);
	}

	@Override
	public List<Map<String, Object>> selectNews() {
		return adminDao.selectNews();
	}

	@Override
	public NewsVO selectByNo(int newsNo) {
		return adminDao.selectByNo(newsNo);
	}

	@Override
	public int updateNews(NewsVO vo) {
		return adminDao.updateNews(vo);
	}

	@Override
	public int deleteNews(int newsNo) {
		return adminDao.deleteNews(newsNo);
	}

}
