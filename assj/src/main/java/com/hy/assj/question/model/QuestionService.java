package com.hy.assj.question.model;

import java.util.List;
import java.util.Map;

import com.hy.assj.common.SearchVO;
import com.hy.assj.notice.model.NoticeVO;
import com.hy.assj.questionReply.model.QuestionReplyVO;

public interface QuestionService {
	public int insertQuestion(QuestionVO questionVo);
	public List<Map<String, Object>> replyList(SearchVO searchVO);
	public int replyListTotalCount(SearchVO searchVO);
	public int replyDelete(int no);
	public int replyDeleteMulti(List<QuestionReplyVO> list);
}
