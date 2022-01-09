package com.vti.entity;

import java.sql.Date;

public class Group {
	private int GroupId;
	private String groupName;
	private int creatorId;
	private Date createDate;
	public int getGroupId() {
		return GroupId;
	}
	public void setGroupId(int groupId) {
		GroupId = groupId;
	}
	public String getGroupName() {
		return groupName;
	}
	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}
	public int getCreatorId() {
		return creatorId;
	}
	public void setCreatorId(int creatorId) {
		this.creatorId = creatorId;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	
}

