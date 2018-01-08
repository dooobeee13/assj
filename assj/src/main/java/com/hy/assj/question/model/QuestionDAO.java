package com.hy.assj.question.model;

import java.util.List;
import java.util.Map;

import com.hy.assj.common.SearchVO;

public interface QuestionDAO {
	public int insertQuestion(QuestionVO questionVo);
	public List<Map<String, Object>> replyList(SearchVO searchVO);
	public int replyListTotalCount(SearchVO searchVO);
	public int replyDelete(int no);
}
