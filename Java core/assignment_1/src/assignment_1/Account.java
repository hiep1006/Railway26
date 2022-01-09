package assignment_1;

import java.time.LocalDate;
import java.util.Date;
import java.util.Scanner;

public class Account {
	
	public int AccountId;
	String Email;
	String userName;
	String fullName;
	int departmentId;
	int positionId;
	LocalDate createDate;
	department department;
	Position positios;
	Group[] group;
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
