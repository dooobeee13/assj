package com.hy.assj.resume.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hy.assj.vo.AreaVO;
import com.hy.assj.vo.EmpTypeVO;
import com.hy.assj.vo.MajorVO;
import com.hy.assj.vo.OccupationVO;
import com.hy.assj.vo.SectorsVO;

@Service
public class ResumeServiceImpl implements ResumeService {

	@Autowired
	private ResumeDAO resumeDao;
	
	@Override
	public List<AreaVO> selectAllAreaTop() {
		return resumeDao.selectAllAreaTop();
	}	

	@Override
	public List<AreaVO> selectAllAreaDetail(int no) {
		return resumeDao.selectAllAreaDetail(no);
	}

	@Override
	public List<MajorVO> selectAllMajorTop() {
		return resumeDao.selectAllMajorTop();
	}

	@Override
	public List<MajorVO> selectAllMajorDetail(int no) {
		return resumeDao.selectAllMajorDetail(no);
	}

	@Override
	public List<EmpTypeVO> selectAllET() {
		return resumeDao.selectAllET();
	}

	@Override
	public List<SectorsVO> selectAllSectorsTop() {
		return resumeDao.selectAllSectorsTop();
	}

	@Override
	public List<OccupationVO> selectAllOccuTop() {
		return resumeDao.selectAllOccuTop();
	}

	@Override
	public List<SectorsVO> selectAllSectorsDetail(int no) {
		return resumeDao.selectAllSectorsDetail(no);
	}

	@Override
	public List<OccupationVO> selectAllOccuDetail(int no) {
		return resumeDao.selectAllOccuDetail(no);
	}

	@Override
	public int insertResume1(HashMap<String, Object> map) {
		return resumeDao.insertResume1(map);
	}

	@Override
	public int insertResume(ResumeVO resumeVO) {
		return resumeDao.insertResume(resumeVO);
	}

	@Override
	public List<ResumeVO> selectAllMyResume(int memNo) {
		return resumeDao.selectAllMyResume(memNo);
	}

	@Override
	public int selectMemNoByEmail(String memEmail) {
		return resumeDao.selectMemNoByEmail(memEmail);
	}

	
	
}
