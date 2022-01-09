package com.vti.entity;

import java.time.LocalDate;
import java.util.Date;
import java.util.Scanner;

public class Account {
	
	private int AccountId;
	private String Email;
	private String userName;
	private String fullName;
	private int departmentId;
	private int positionId;
	private LocalDate createDate;
	private department department;
	private Position positios;
	private Group[] group;
	public Account(){
		
	}
	public Account(int id,String email, String Username,String FirstName,String LastName){
		this.AccountId = id;
		this.Email = email;
		this.userName = Username;
		this.fullName = FirstName + " " + LastName;
	
	
	}
	
	public Account(int id,String email, String Username,String FirstName,String LastName, Position positios){
		this.AccountId = id;
		this.Email = email;
		this.userName = Username;
		this.fullName = FirstName + " " + LastName;
		this.positios = positios;
		this.createDate = LocalDate.now();
	}
	
	public Account(int id,String email, String Username,String FirstName,String LastName, Position positios, LocalDate date){
		this.AccountId = id;
		this.Email = email;
		this.userName = Username;
		this.fullName = FirstName + " " + LastName;
		this.positios = positios;
		this.createDate = date;
	}
	
	
	public int getAccountId() {
		return AccountId;
	}
	
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public int getDepartmentId() {
		return departmentId;
	}
	public void setDepartmentId(int departmentId) {
		this.departmentId = departmentId;
	}
	public int getPositionId() {
		return positionId;
	}
	public void setPositionId(int positionId) {
		this.positionId = positionId;
	}
	public LocalDate getCreateDate() {
		return createDate;
	}
	public void setCreateDate(LocalDate createDate) {
		this.createDate = createDate;
	}
	public Position getPositios() {
		return positios;
	}
	public void setPositios(Position positios) {
		this.positios = positios;
	}
	public Group[] getGroup() {
		return group;
	}
	public void setGroup(Group[] group) {
		this.group = group;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public department getDepartment() {
		return department;
	}
	public void setDepartment(department department) {
		this.department = department;
	}
	public void setAccountId(int accountId) {
		AccountId = accountId;
	}
	public void Input()
	{
		Scanner sc = new Scanner(System.in);
		System.out.println("id: ");
		this.AccountId = sc.nextInt();
		String s = sc.nextLine();
		System.out.println("Email: ");
		this.Email = sc.nextLine();
		System.out.println("Username: ");
		this.userName = sc.nextLine();
		System.out.println("Fullname: ");
		this.fullName = sc.nextLine();
		System.out.println("Departmentid: ");
		this.departmentId = sc.nextInt();
		System.out.println("Positionid: ");
		this.positionId = sc.nextInt();
		this.createDate = LocalDate.now();
		
	}
	
	public void Output()
	{
		System.out.println("AccountId: " + AccountId);
		System.out.println("Email: " + Email);
		System.out.println("userName: " + userName);
		System.out.println("fullName: " + fullName);
		System.out.println("departmentId: " + departmentId);
		switch(positionId)
		{
			case 1:
				System.out.println("Dev");
				break;
			case 2:
				System.out.println("Test");
				break;
			case 3:
				System.out.println("ScrumMaster");
				break;
			case 4:
				System.out.println("PM");
				break;
			
		}
		
	}
	public void AddGroup(String group, String username)
	{
		
	}
}
