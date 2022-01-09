package com.vti.entity;

public class Answer {
	private int answerId;
	private String content;
	private int questionId;
	private Question[] question;
	private boolean isCorrect;
	public int getAnswerId() {
		return answerId;
	}
	public void setAnswerId(int answerId) {
		this.answerId = answerId;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getQuestionId() {
		return questionId;
	}
	public void setQuestionId(int questionId) {
		this.questionId = questionId;
	}
	public Question[] getQuestion() {
		return question;
	}
	public void setQuestion(Question[] question) {
		this.question = question;
	}
	public boolean isCorrect() {
		return isCorrect;
	}
	public void setCorrect(boolean isCorrect) {
		this.isCorrect = isCorrect;
	}
	
}
