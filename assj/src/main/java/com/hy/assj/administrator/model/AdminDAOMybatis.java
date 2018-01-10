package com.hy.assj.administrator.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.hy.assj.common.SearchVO;
import com.hy.assj.question.model.QuestionVO;
import com.hy.assj.question.model.QuestionViewVO;
import com.hy.assj.vo.NewsVO;

@Repository
public class AdminDAOMybatis extends SqlSessionDaoSupport implements AdminDAO{
	private String namespace = "config.mybatis.mapper.oracle.news";
	private String adminspace = "config.mybatis.mapper.oracle.admin";
	
	public int insertNews(NewsVO vo) {
		return getSqlSession().insert(namespace+".insertNews",vo);
	}

	@Override
	public List<Map<String, Object>> selectNews() {
		return getSqlSession().selectList(namespace+".selectNews");
	}

	@Override
	public NewsVO selectByNo(int newsNo) {
		return getSqlSession().selectOne(namespace+".selectByNo",newsNo);
	}

	@Override
	public int updateNews(NewsVO vo) {
		return getSqlSession().update(namespace+".updateNews",vo);
	}

	@Override
	public int deleteNews(int newsNo) {
		return getSqlSession().delete(namespace+".deleteNews",newsNo);
	}

	@Override
	public String selectAdminLogin(String userid) {
		return getSqlSession().selectOne(adminspace+".selectAdminLogin",userid);
	}

	@Override
	public int CreateAdmin(Map<String, Object> list) {
		return getSqlSession().insert(adminspace+".CreateAdmin",list);
	}

	@Override
	public int insertChat(Map<String, Object> list) {
		return getSqlSession().insert(adminspace+".insertChat",list);
	}

	@Override
	public List<Map<String, Object>> selectLastChat() {
		return getSqlSession().selectList(adminspace+".selectLastChat");
	}

	@Override
	public List<Map<String, Object>> selectByLastChatNo(int lastNo) {
		return getSqlSession().selectList(adminspace+".selectByLastChatNo",lastNo);
	}

	@Override
	public Map<String, Object> selectLastNo() {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public List<Map<String, Object>> questionList(SearchVO searchVo) {
		return getSqlSession().selectList(adminspace+".questionList",searchVo);
	}

	@Override
	public int questionListTotal() {
		return getSqlSession().selectOne(adminspace+".questionListTotal");
	}

	@Override
	public int questionDelete(int no) {
		return getSqlSession().delete(adminspace+".questionDelete",no);
	}

	@Override
	public QuestionViewVO selectByquestion(int no) {
		return getSqlSession().selectOne(adminspace+".selectByquestion",no);
	}

	@Override
	public int UpdateReplyFlag(int no) {
		return getSqlSession().update(adminspace+".UpdateReplyFlag",no);
	}

	@Override
	public Map<String, Object> selectAdminInfo(String userid) {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne(adminspace+".selectAdminInfo",userid);
	}
	
}
