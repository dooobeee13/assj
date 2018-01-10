package com.hy.assj.administrator.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hy.assj.common.SearchVO;
import com.hy.assj.question.model.QuestionVO;
import com.hy.assj.question.model.QuestionViewVO;
import com.hy.assj.vo.NewsVO;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private AdminDAO adminDao;
	
	@Override
	public int insertNews(NewsVO vo) {
		return adminDao.insertNews(vo);
	}

	@Override
	public List<Map<String, Object>> selectNews() {
		return adminDao.selectNews();
	}

	@Override
	public NewsVO selectByNo(int newsNo) {
		return adminDao.selectByNo(newsNo);
	}

	@Override
	public int updateNews(NewsVO vo) {
		return adminDao.updateNews(vo);
	}

	@Override
	public int deleteNews(int newsNo) {
		return adminDao.deleteNews(newsNo);
	}

	@Override
	public int selectAdminLogin(String userid, String pwd) {
		int cnt = 0;
		
		String Apwd = adminDao.selectAdminLogin(userid);
		if(Apwd!=null) {
			if(Apwd.equals(pwd)) {
				cnt = AdminService.LOGIN_OK;
			}else {
				cnt = AdminService.PWD_DISAGREE;
			}
		}else {
			cnt=AdminService.NOT_EXITST;
		}
		
		return cnt;
	}

	@Override
	public int CreateAdmin(Map<String, Object> list) {
		return adminDao.CreateAdmin(list);
	}

	@Override
	public int insertChat(Map<String, Object> list) {
		return adminDao.insertChat(list);
	}

	@Override
	public List<Map<String, Object>> selectLastChat() {
		return adminDao.selectLastChat();
	}

	@Override
	public List<Map<String, Object>> selectByLastChatNo(int lastNo) {
		return adminDao.selectByLastChatNo(lastNo);
	}
	
	@Override
	public List<Map<String, Object>> questionList(SearchVO searchVo) {
		return adminDao.questionList(searchVo);
	}

	@Override
	public int questionListTotal() {
		return adminDao.questionListTotal();
	}

	@Override
	public int questionDelete(int no) {
		return adminDao.questionDelete(no);
	}

	@Override
	public QuestionViewVO selectByquestion(int no) {
		return adminDao.selectByquestion(no);
	}

	@Override
	public int UpdateReplyFlag(int no) {
		return adminDao.UpdateReplyFlag(no);
	}

	@Override
	public Map<String, Object> selectAdminInfo(String userid) {
		// TODO Auto-generated method stub
		return adminDao.selectAdminInfo(userid);
	}

}
