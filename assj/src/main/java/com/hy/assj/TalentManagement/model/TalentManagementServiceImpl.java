package com.hy.assj.TalentManagement.model;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TalentManagementServiceImpl implements TalentManagementService {
	private static final Logger logger = LoggerFactory.getLogger(TalentManagementServiceImpl.class);
	
	@Autowired
	private TalentManagementDAO tmDao;

	@Override
	public List<Map<Integer, String>> selectRank() {
		return tmDao.selectRank();
	}

	@Override
	public List<Map<Integer, String>> selectPosition() {
		return tmDao.selectPosition();
	}

	@Override
	public List<Map<Integer, String>> selectEmpType() {
		return tmDao.selectEmpType();
	}

	@Override
	public List<Map<String, Object>> selectSectors() {
		return tmDao.selectSectors();
	}

	@Override
	public List<Map<String, Object>> selectArea() {
		return tmDao.selectArea();
	}

	@Override
	public List<Map<String, Object>> selectEducation() {
		return tmDao.selectEducation();
	}

	@Override
	public List<Map<String, Object>> selectOccupation() {
		return tmDao.selectOccupation();
	}

	@Override
	public List<Map<String, Object>> selectResume(TalentManagementVO vo) {
		return tmDao.selectResume(vo);
	}
	
	
}
