package com.vti.entity;

import java.sql.Date;

public class GroupAccount {
	private int groupId;
	private Group[] group;
	private int AccountId;
	private Account[] account;
	private Date JoinDate;
	public int getGroupId() {
		return groupId;
	}
	public void setGroupId(int groupId) {
		this.groupId = groupId;
	}
	public Group[] getGroup() {
		return group;
	}
	public void setGroup(Group[] group) {
		this.group = group;
	}
	public int getAccountId() {
		return AccountId;
	}
	public void setAccountId(int accountId) {
		AccountId = accountId;
	}
	public Account[] getAccount() {
		return account;
	}
	public void setAccount(Account[] account) {
		this.account = account;
	}
	public Date getJoinDate() {
		return JoinDate;
	}
	public void setJoinDate(Date joinDate) {
		JoinDate = joinDate;
	}
	
}
