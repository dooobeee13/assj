package com.hy.assj.notice.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.hy.assj.common.SearchVO;

@Repository
public class NoticeDAOMybatis extends SqlSessionDaoSupport
	implements NoticeDAO{

	private String namespace="config.mybatis.mapper.oracle.notice";
	
	@Override
	public List<Map<String, Object>> noticeList(NotiSearchVO vo) {
		return getSqlSession().selectList(namespace+".noticeList", vo);
	}

	@Override
	public int updateReadCount(int no) {
		return getSqlSession().update(namespace+".updateReadCount",no);
	}

	@Override
	public Map<String,Object> selectByNo(int no) {
		return getSqlSession().selectOne(namespace+".selectByNo",no);
	}

	@Override
	public List<Map<String, Object>> noticeRownum() {
		return getSqlSession().selectList(namespace+".noticeRownum");
	}

	@Override
	public int insertNotice(NoticeVO noticeVO) {
		return getSqlSession().insert(namespace+".insertNotice",noticeVO);
	}

	@Override
	public int updateNotice(NoticeVO noticeVO) {
		return getSqlSession().update(namespace+".updateNotice",noticeVO);
	}

	@Override
	public int deleteNotice(int no) {
		return getSqlSession().delete(namespace+".deleteNotice",no);
	}

	@Override
	public Map<String, Object> nextprev(int no) {
		return getSqlSession().selectOne(namespace+".nextprev",no);
	}

	@Override
	public int selectTotalRecordCount(NotiSearchVO searchVo) {
		return getSqlSession().selectOne(namespace+".selectTotalRecordCount",searchVo);
	}	
}
