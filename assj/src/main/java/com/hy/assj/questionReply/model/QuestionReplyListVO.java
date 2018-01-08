package com.hy.assj.questionReply.model;

import java.util.List;

public class QuestionReplyListVO {
	List<QuestionReplyVO> replyItems;

	public List<QuestionReplyVO> getReplyItems() {
		return replyItems;
	}

	public void setReplyItems(List<QuestionReplyVO> replyItems) {
		this.replyItems = replyItems;
	}

	@Override
	public String toString() {
		return "QuestionReplyListVO [replyItems=" + replyItems + "]";
	}
	
}
