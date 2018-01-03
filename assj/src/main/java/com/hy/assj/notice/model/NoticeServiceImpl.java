package com.hy.assj.notice.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hy.assj.common.SearchVO;

@Service
public class NoticeServiceImpl implements NoticeService{
	
	@Autowired
	private NoticeDAO noticeDao;
	
	@Override
	public List<Map<String, Object>> noticeList(NotiSearchVO vo) {
		return noticeDao.noticeList(vo);
	}

	/*@Override
	public List<Map<String, Object>> noticeList1(SearchVO vo) {
		return noticeDao.noticeList1(vo);
	}

	@Override
	public List<Map<String, Object>> noticeList2() {
		return noticeDao.noticeList2();
	}

	@Override
	public List<Map<String, Object>> noticeList3() {
		return noticeDao.noticeList3();
	}

	@Override
	public List<Map<String, Object>> noticeList4() {
		return noticeDao.noticeList4();
	}

	@Override
	public List<Map<String,Object>> selectAll(SearchVO searchVo) {
		return noticeDao.selectAll(searchVo);
	}*/


	@Override
	public int updateReadCount(int no) {
		return noticeDao.updateReadCount(no);
	}

	@Override
	public Map<String,Object> selectByNo(int no) {
		return noticeDao.selectByNo(no);
	}

	@Override
	public List<Map<String, Object>> noticeRownum() {
		return noticeDao.noticeRownum();
	}

	@Override
	public int insertNotice(NoticeVO noticeVO) {
		return noticeDao.insertNotice(noticeVO);
	}

	@Override
	public int updateNotice(NoticeVO noticeVO) {
		return noticeDao.updateNotice(noticeVO);
	}

	@Override
	public Map<String, Object> nextprev(int no) {
		return noticeDao.nextprev(no);
	}

	
	
	
	@Override
	@Transactional
	public int deleteMulti(List<NoticeVO> list) {
		int cnt=0;
		try {
			for(NoticeVO vo: list) {
				int noticeNo=vo.getNo();
				//체크한 상품만 삭제
				if(noticeNo!=0) {
					cnt=noticeDao.deleteNotice(noticeNo);
				}
			}//for
				
		}catch(RuntimeException e) {
			cnt=0;
			e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public int deleteNotice(int no) {
		return noticeDao.deleteNotice(no);
	}

	@Override
	public int selectTotalRecordCount(NotiSearchVO searchVo) {
		return noticeDao.selectTotalRecordCount(searchVo);
	}

	/*@Override
	public int selectTotalRecordCount1(SearchVO searchVo) {
		return noticeDao.selectTotalRecordCount1(searchVo);
	}*/

	
}
