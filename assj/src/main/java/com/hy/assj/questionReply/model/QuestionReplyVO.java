package com.hy.assj.questionReply.model;

public class QuestionReplyVO {
	private int no;  
	private int adminNo; 
	private String replyContent;  
	private int groupNo;
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getAdminNo() {
		return adminNo;
	}
	public void setAdminNo(int adminNo) {
		this.adminNo = adminNo;
	}
	public String getReplyContent() {
		return replyContent;
	}
	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}
	public int getGroupNo() {
		return groupNo;
	}
	public void setGroupNo(int groupNo) {
		this.groupNo = groupNo;
	}
	
	@Override
	public String toString() {
		return "QuestionReplyVO [no=" + no + ", adminNo=" + adminNo + ", replyContent=" + replyContent + ", groupNo="
				+ groupNo + "]";
	} 
	
	
	
	
}
