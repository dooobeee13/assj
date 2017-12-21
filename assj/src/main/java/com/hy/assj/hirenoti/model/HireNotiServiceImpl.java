package com.hy.assj.hirenoti.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HireNotiServiceImpl implements HireNotiService{
	
	@Autowired
	private HireNotiDAO hirenotiDao;

	@Override
	public int insertHireNoti(HireNotiVO vo) {
		
		return 0;
	}	
}
