package com.hy.assj.freeboard.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FreeBoardServiceImpl implements FreeBoardService {

	@Autowired
	FreeBoardDAO freeBoardDao;

	@Override
	public int insertFB(FreeBoardVO fbVO) {
		return freeBoardDao.insertFB(fbVO);
	}

	@Override
	public Map<String, Object> selectFB(int fbNo) {
		return freeBoardDao.selectFB(fbNo);
	}

	@Override
	public List<Map<String, Object>> selectAllFB() {
		return freeBoardDao.selectAllFB();
	}

	@Override
	public FreeBoardVO selectFBByNo(int fbNo) {
		return freeBoardDao.selectFBByNo(fbNo);
	}

	@Override
	public int updateFB(FreeBoardVO fbVO) {
		return freeBoardDao.updateFB(fbVO);
	}

	@Override
	public int deleteFB(int fbNo) {
		return freeBoardDao.deleteFB(fbNo);
	}
	
	
	
}
