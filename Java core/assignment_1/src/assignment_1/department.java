package assignment_1;

import java.util.Scanner;

public class department {
	int departmentId;
	String departmentName;
	public department()
	{
		
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
	
}

