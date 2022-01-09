package com.vti.entity;

import java.util.Scanner;

public class department {
	private int departmentId;
	private String departmentName;
	public department()
	{
		
	}
	
	public int getDepartmentId() {
		return departmentId;
	}

	public void setDepartmentId(int departmentId) {
		this.departmentId = departmentId;
	}

	public String getDepartmentName() {
		return departmentName;
	}

	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}

	public department(String departmentName)
	{
		this.departmentName = departmentName;
		this.departmentId = 0;
	}
	public void Input()
	{
		System.out.print("Nhap id: ");
		Scanner sc = new Scanner(System.in);
		departmentId = sc.nextInt();
		System.out.print("Nhap departmentName: ");
		String s = sc.nextLine();
		departmentName = sc.nextLine();
	}

	@Override
	public String toString() {
		return "department [departmentId=" + departmentId + ", departmentName=" + departmentName + "]";
	}
	
}

