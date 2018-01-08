package com.hy.assj.reboard.model;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hy.assj.common.SearchVO;

@Service
public class ReboardServiceImpl implements ReboardService{
	private static final Logger logger
	=LoggerFactory.getLogger(ReboardServiceImpl.class);
	
	@Autowired
	private ReboardDAO reboardDao;
	
	@Override
	public int insertQnA(ReboardVO reboardVO) {
		return reboardDao.insertQnA(reboardVO);
	}

	@Override
	public List<ReboardVO> QnaList(SearchVO searchVo) {
		return reboardDao.QnaList(searchVo);
	}
	
	@Override
	public int updateReadCount(int no) {
		return reboardDao.updateReadCount(no);
	}
	
	@Override
	public  ReboardVO selectByNo(int no) {
		return reboardDao.selectByNo(no);
	}
	@Override
	public List<ReboardVO> selectAll(SearchVO searchVo) {
		return reboardDao.selectAll(searchVo);
	}

	@Override
	public List<Map<String, Object>> QnaRownum() {
		return reboardDao.QnaRownum();
	}

	@Override
	public int selectTotalRecordCount(SearchVO searchVo) {
		return reboardDao.selectTotalRecordCount(searchVo);
	}

	@Override
	public int updateQnA(ReboardVO reboardVO) {
		return reboardDao.updateQnA(reboardVO);
	}
	
	public boolean deleteReBoard(Map<String, String> map){
		String no = map.get("no");
		String pwd = map.get("pwd");
		ReboardVO vo = reboardDao.selectByNo(Integer.parseInt(no));
		String originPwd = vo.getPwd();
		if (pwd.equals(originPwd)) {
			reboardDao.deleteReBoard(map);
			return true;
		} else {
			return false;
		}
	}

	@Override
	@Transactional
	public int reply(ReboardVO vo) {
		int cnt = reboardDao.updateSortNo(vo);
		logger.info("답변처리-sortno 수정결과 cnt={}", cnt);
		
		/*vo.setSortNo(vo.getSortNo()+1);
		vo.setStep(vo.getStep()+1);*/
		
		cnt = reboardDao.replyReboard(vo);
		logger.info("답변처리 결과, cnt={}", cnt);
		
		return cnt;		
	}

	@Override
	public int groupDelete(int no) {
		return reboardDao.groupDelete(no);
	}

	@Override
	public int solDelete(int no) {
		return reboardDao.solDelete(no);
	}



}
