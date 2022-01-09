package com.vti.entity;

import java.sql.Date;

public class Question {
	private int questionId;
	private String content;
	private int categoyId;
	private CategoryQuestion[] category;
	private int typeId;
	private TypeQuestion[] type;
	private int creatorId;
	private Account[] account;
	private Date createDate;
	public int getQuestionId() {
		return questionId;
	}
	public void setQuestionId(int questionId) {
		this.questionId = questionId;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getCategoyId() {
		return categoyId;
	}
	public void setCategoyId(int categoyId) {
		this.categoyId = categoyId;
	}
	public CategoryQuestion[] getCategory() {
		return category;
	}
	public void setCategory(CategoryQuestion[] category) {
		this.category = category;
	}
	public int getTypeId() {
		return typeId;
	}
	public void setTypeId(int typeId) {
		this.typeId = typeId;
	}
	public TypeQuestion[] getType() {
		return type;
	}
	public void setType(TypeQuestion[] type) {
		this.type = type;
	}
	public int getCreatorId() {
		return creatorId;
	}
	public void setCreatorId(int creatorId) {
		this.creatorId = creatorId;
	}
	public Account[] getAccount() {
		return account;
	}
	public void setAccount(Account[] account) {
		this.account = account;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	
}
