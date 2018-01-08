package com.hy.assj.question.model;


import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hy.assj.common.SearchVO;
import com.hy.assj.notice.model.NoticeVO;
import com.hy.assj.questionReply.model.QuestionReplyVO;


@Service
public class QuestionServiceImpl implements QuestionService{
	private static final Logger logger
	=LoggerFactory.getLogger(QuestionServiceImpl.class);
	
	@Autowired
	private QuestionDAO questionDao;
	
	@Override
	public int insertQuestion(QuestionVO questionVo) {
		return questionDao.insertQuestion(questionVo);
	}

	@Override
	public List<Map<String, Object>> replyList(SearchVO searchVO) {
		return questionDao.replyList(searchVO);
	}

	@Override
	public int replyListTotalCount(SearchVO searchVO) {
		return questionDao.replyListTotalCount(searchVO);
	}

	@Override
	public int replyDelete(int no) {
		return questionDao.replyDelete(no);
	}
	
	@Override
	@Transactional
	public int replyDeleteMulti(List<QuestionReplyVO> list) {
		int cnt=0;
		try {
			for(QuestionReplyVO vo: list) {
				int replyNo=vo.getNo();
				
				//체크한 상품만 삭제
				if(replyNo!=0) {
					cnt=questionDao.replyDelete(replyNo);
				}
			}//for
				
		}catch(RuntimeException e) {
			cnt=0;
			e.printStackTrace();
		}
		return cnt;
	}

	
}
