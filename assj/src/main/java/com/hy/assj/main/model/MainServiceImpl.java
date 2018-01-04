package com.hy.assj.main.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MainServiceImpl implements MainService {

	@Autowired
	private MainDAO mainDao;
	
	@Override
	public List<MHireNotiVO> selectHireNotiList() {
		return mainDao.selectHireNotiList();
	}
	
}
