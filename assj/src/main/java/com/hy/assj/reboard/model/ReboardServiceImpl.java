package com.hy.assj.reboard.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hy.assj.common.SearchVO;

@Service
public class ReboardServiceImpl implements ReboardService{

	@Autowired
	private ReboardDAO reboardDao;
	
	@Override
	public int insertQnA(ReboardVO reboardVO) {
		return reboardDao.insertQnA(reboardVO);
	}

	@Override
	public List<ReboardVO> QnaList() {
		return reboardDao.QnaList();
	}
	
	@Override
	public int updateReadCount(int no) {
		return reboardDao.updateReadCount(no);
	}
	
	@Override
	public  ReboardVO selectByNo(int no) {
		return reboardDao.selectByNo(no);
	}
	/*
	@Override
	public List<Map<String, Object>> QnaRownum() {
		return reboardDao.QnaRownum();
	}


	@Override
	public List<ReboardVO> selectAll(SearchVO searchVo) {
		return reboardDao.selectAll(searchVo);
	}

	@Override
	public int selectTotalRecordCount(SearchVO searchVo) {
		return reboardDao.selectTotalRecordCount(searchVo);
	}*/

	@Override
	public int updateQnA(ReboardVO reboardVO) {
		return reboardDao.updateQnA(reboardVO);
	}
}
