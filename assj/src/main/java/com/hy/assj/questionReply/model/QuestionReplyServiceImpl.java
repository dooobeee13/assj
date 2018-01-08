package com.hy.assj.questionReply.model;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class QuestionReplyServiceImpl implements QuestionReplyService{
	private static final Logger logger
	=LoggerFactory.getLogger(QuestionReplyServiceImpl.class);
	
	@Autowired
	private QuestionReplyDAO questionReplyDao;
	
	@Override
	public int insertQuestionReply(QuestionReplyVO questionReplyVo) {
		return questionReplyDao.insertQuestionReply(questionReplyVo);
	} 
	
}
