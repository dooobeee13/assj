package com.hy.assj.question.model;

public class QuestionViewVO extends QuestionVO{
	private String questionTitle;

	public String getQuestionTitle() {
		return questionTitle;
	}

	public void setQuestionTitle(String questionTitle) {
		this.questionTitle = questionTitle;
	}

	@Override
	public String toString() {
		return "QuestionViewVO [questionTitle=" + questionTitle + ", toString()=" + super.toString() + "]";
	}
		
}
