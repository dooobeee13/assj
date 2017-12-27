package com.hy.assj.hirenoti.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hy.assj.common.SearchVO;

@Service
public class HireNotiServiceImpl implements HireNotiService{
	
	@Autowired
	private HireNotiDAO hirenotiDao;

	@Override
	public int insertHireNoti(HireNotiVO vo) {
		
		return hirenotiDao.insertHireNoti(vo);
	}

	@Override
	public List<HireNotiVO> selectAll(SearchVO searchVo) {
		
		return hirenotiDao.selectAll(searchVo);
	}	
}
