package com.hy.assj.question.model;

public class QuestionVO {
	private int no;           
	private String id;         
	private String email; 
	private String title;  
	private int questionNo;  
	private String content;
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getQuestionNo() {
		return questionNo;
	}
	public void setQuestionNo(int questionNo) {
		this.questionNo = questionNo;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	@Override
	public String toString() {
		return "QuestionVO [no=" + no + ", id=" + id + ", email=" + email + ", title=" + title + ", questionNo="
				+ questionNo + ", content=" + content + "]";
	} 
	
	
	
}
