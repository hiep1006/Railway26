package assignment_1;

import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.Locale;
import java.util.Random;
import java.util.Scanner;

public class testbai1 {
	public static void main(String[] args) {
		//Exercise2();
		//Exercise3();
		//Exercise4();
		//Exercise4();
		Exercise5();
	}
	
	static void Exercise1()
	{
		department dep1 = new department();
		dep1.departmentId = 1;
		dep1.departmentName = "Phong ban 1";
		
		department dep2 = new department();
		dep2.departmentId = 2;
		dep2.departmentName = "Phong ban 2";
		
		department dep3 = new department();
		dep3.departmentId = 2;
		dep3.departmentName = "Phong ban 3";
		
		Position pos1 = new Position();
		pos1.positionId = 1;
		pos1.positionName = "Dev";
		
		Position pos2 = new Position();
		pos2.positionId = 2;
		pos2.positionName = "Test";
		
		Position pos3 = new Position();
		pos3.positionId = 3;
		pos3.positionName = "Scrum master";
		
		Position pos4 = new Position();
		pos4.positionId = 3;
		pos4.positionName = "PM";
		
		Group gr1 = new Group();
		gr1.GroupId = 1;
		gr1.groupName = "group 1";
		gr1.creatorId = 1;
		
		Group gr2 = new Group();
		gr2.GroupId = 2;
		gr2.groupName = "group 2";
		gr2.creatorId = 2;
		
		
		Group gr3 = new Group();
		gr3.GroupId = 3;
		gr3.groupName = "group 3";
		gr3.creatorId = 3;
		
		Account acc1 = new Account();
		acc1.AccountId = 1;
		acc1.Email = "email1@gmail.com";
		acc1.userName = "user1";
		acc1.fullName = "fullname1";
		acc1.departmentId = 1;
		acc1.positionId = 1;
		acc1.department = dep1;
		acc1.positios = pos1;
		acc1.createDate = LocalDate.of(2021, 10, 06);
		Account acc2 = new Account();
		acc2.AccountId = 2;
		acc2.Email = "email2@gmail.com";
		acc2.userName = "user2";
		acc2.fullName = "fullname2";
		acc2.departmentId = 2;
		acc2.positionId = 2;
		acc2.department = dep2;
		acc2.positios = pos2;
		acc2.group = new Group[2];
		acc2.group[0] = gr1;
		acc2.group[1] = gr2;
		
		Account acc3 = new Account();
		acc3.AccountId = 3;
		acc3.Email = "email3@gmail.com";
		acc3.userName = "user3";
		acc3.fullName = "fullname3";
		acc3.departmentId = 3;
		acc3.positionId = 3;
		acc3.department = dep3;
		acc3.positios = pos3;
		
		GroupAccount gracc1 = new GroupAccount();
		gracc1.groupId = 1;
		gracc1.AccountId = 1;
		gracc1.account = new Account[2];
		gracc1.account[0] = acc1;
		gracc1.account[1] = acc2;
		
		
		// 1
		if(acc2.department == null)
		{
			System.out.println("Nhan vien nay chua co phong ban");
		}
		else
			System.out.println("phong ban cua nhan vien nay la: " + acc2.department.departmentName);
		
		
		// 2
		if(acc2.group.length == 1)
		{
			System.out.println("Nhan vien nay chua co group");
		}
		else if(acc2.group.length == 2)
			System.out.println("Group cua nhan vien nay la Java Fresher, C# Fresher");
		
		else if(acc2.group.length == 3)
		{
			System.out.println("NHan vien nay la nguoi quan trong than gia nhieu group");
		}
		else
			System.out.println("Nhan vien nay la nguoi hong chuyen tham gia tat ca cac group");
		
		// 3
		String result;
		result = acc2.department == null ? "Nhan vien nay chua co phong ban":"phong ban cua nhan vien nay la " + acc2.department.departmentName;
		System.out.println(result);
		//4
		result = acc1.positios.positionName == "Dev"?"Day la developer":"Day khong phai la developer";
		System.out.println(result);
		// 5
		switch (gracc1.account.length)
		{
			case 1:
				System.out.println("Nhom co mot thanh vien");
				break;
			case 2:
				System.out.println("Nhom co hai thanh vien");
				break;
			case 3:
				System.out.println("Nhom co ba thanh vien");
				break;
			
		}
		// 6
		switch(acc2.group.length)
		{
			case 1:
				System.out.println("Nhan vien nay chua co group");
				break;
			case 2:
				System.out.println("Group cua nhan vien nay la Java Fresher, C# Fresher");
				break;
			case 3:
				System.out.println("NHan vien nay la nguoi quan trong than gia nhieu group");
				break;
			default:
				System.out.println("Nhan vien nay la nguoi hong chuyen tham gia tat ca cac group");
				break;
		}
		
		// 7
		switch(acc1.positios.positionName)
		{
			case "Dev":
				System.out.println("Day la developer");
			default:
				System.out.println("nguoi nay hkong phai developer");
		}
		
		// 8
		Account[] account = new Account[3];
		account[0] = acc1;
		account[1] = acc2;
		account[2] = acc3;
		for(Account a : account)
		{
			System.out.println(a.AccountId);
			System.out.println("Email: " + a.Email);
			System.out.println("Fullname: " + a.fullName);
			System.out.println("Ten phong ban: " + a.department.departmentName + "\n");
		}
		 // 9
		department[] listDep = new department[3];
		listDep[0] = dep1;
		listDep[1] = dep2;
		listDep[2] = dep3;
		for(department a : listDep)
		{
			System.out.println("id: " + a.departmentId);
			System.out.println("Name: " + a.departmentName);
		}
		// 10
		for(int i = 0; i < account.length ; i++)
		{
			System.out.println("Thong tin account thu " + (i + 1));
			System.out.println("Email: " + account[i].Email);
			System.out.println("Full name: " + account[i].fullName);
			System.out.println("Phong ban: " + account[i].department.departmentName + "\n");
		}
		// 11
		for(int i = 0; i < listDep.length ; i++)
		{
			System.out.println("Thong tin department thu " + (i + 1));
			System.out.println("Id: " + listDep[i].departmentId);
			System.out.println("Name: " + listDep[i].departmentName + "\n");
		}
		// 12
		for(int i = 0; i < listDep.length ; i++)
		{
			if(i < 2)
			{
				System.out.println("Thong tin department thu " + (i + 1));
				System.out.println("Id: " + listDep[i].departmentId);
				System.out.println("Name: " + listDep[i].departmentName + "\n");
			}
			
		}
		// 13
		for(int i = 0; i < account.length ; i++)
		{
			if(i != 1)
			{
				System.out.println("Thong tin account thu " + (i + 1));
				System.out.println("Email: " + account[i].Email);
				System.out.println("Full name: " + account[i].fullName);
				System.out.println("Phong ban: " + account[i].department.departmentName + "\n");
			}
			
			
		}
		// 14
		for(int i = 0; i < account.length ; i++)
		{
			if(account[i].AccountId < 4)
			{
				System.out.println("Thong tin account thu " + (i + 1));
				System.out.println("Email: " + account[i].Email);
				System.out.println("Full name: " + account[i].fullName);
				System.out.println("Phong ban: " + account[i].department.departmentName + "\n");
			}
			
			
		}
		// 15
		for(int i = 1; i <= 20 ; i++)
		{
			if(i % 2 == 0)
			{
				System.out.println(i);
			}
		}
		// 16
		int i = 0;
		while(true)
		{
			System.out.println("Thong tin account thu " + (i + 1));
			System.out.println("Email: " + account[i].Email);
			System.out.println("Full name: " + account[i].fullName);
			System.out.println("Phong ban: " + account[i].department.departmentName + "\n");
			i++;
			if(i >= account.length)
				break;
		}
		i= 0;
		while(true)
		{
			System.out.println("Thong tin department thu " + (i + 1));
			System.out.println("Id: " + listDep[i].departmentId);
			System.out.println("Name: " + listDep[i].departmentName + "\n");
			i++;
			if(i >= listDep.length)
				break;
		}
		i = 0;
		while(true)
		{
			if(i < 2)
			{
				System.out.println("Thong tin department thu " + (i + 1));
				System.out.println("Id: " + listDep[i].departmentId);
				System.out.println("Name: " + listDep[i].departmentName + "\n");
			}
			i++;
			if(i >= listDep.length)
			{
				break;
			}
		}
		i = 0;
		while(true)
		{
			if(i != 1)
			{
				System.out.println("Thong tin account thu " + (i + 1));
				System.out.println("Email: " + account[i].Email);
				System.out.println("Full name: " + account[i].fullName);
				System.out.println("Phong ban: " + account[i].department.departmentName + "\n");
			}
			i++;
			if(i >= account.length)
				break;
		}
		i = 0;
		while(true)
		{
			if(account[i].AccountId < 4)
			{
				System.out.println("Thong tin account thu " + (i + 1));
				System.out.println("Email: " + account[i].Email);
				System.out.println("Full name: " + account[i].fullName);
				System.out.println("Phong ban: " + account[i].department.departmentName + "\n");
			}
			i++;
			if(i >= account.length)
				break;
		}
		i = 1;
		while(true)
		{
			if(i % 2 == 0)
			{
				System.out.println(i);
			}
			i++;
			if(i > 20)
				break;
				
		}
	}
	
	static void Exercise2()
	{
		// 1
		int a = 5;
		System.out.println(a);
		// 2
		a = 100000000;
		DecimalFormat df = new DecimalFormat();
		df.setMaximumFractionDigits(3);
		System.out.println(df.format(a));
		// 3
		float f = 5.567098f;
		System.out.printf("%.4f", f);
		// 4
		String hoTen = "Nguyen Van A";
		System.out.printf("\nTen toi la %s va toi dang doc than" , hoTen);
		// 5
		Date date = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy hh'h':mm'p':ss's'");
		String strDate = formatter.format(date);
		System.out.println(strDate);
		//6
		department dep1 = new department();
		dep1.departmentId = 1;
		dep1.departmentName = "Phong ban 1";
		
		department dep2 = new department();
		dep2.departmentId = 2;
		dep2.departmentName = "Phong ban 2";
		
		department dep3 = new department();
		dep3.departmentId = 2;
		dep3.departmentName = "Phong ban 3";
		
		Position pos1 = new Position();
		pos1.positionId = 1;
		pos1.positionName = "Dev";
		
		Position pos2 = new Position();
		pos2.positionId = 2;
		pos2.positionName = "Test";
		
		Position pos3 = new Position();
		pos3.positionId = 3;
		pos3.positionName = "Scrum master";
		
		Position pos4 = new Position();
		pos4.positionId = 3;
		pos4.positionName = "PM";
		
		Group gr1 = new Group();
		gr1.GroupId = 1;
		gr1.groupName = "group 1";
		gr1.creatorId = 1;
		
		Group gr2 = new Group();
		gr2.GroupId = 2;
		gr2.groupName = "group 2";
		gr2.creatorId = 2;
		
		
		Group gr3 = new Group();
		gr3.GroupId = 3;
		gr3.groupName = "group 3";
		gr3.creatorId = 3;
		Account acc1 = new Account();
		acc1.AccountId = 1;
		acc1.Email = "email1@gmail.com";
		acc1.userName = "user1";
		acc1.fullName = "fullname1";
		acc1.departmentId = 1;
		acc1.positionId = 1;
		acc1.department = dep1;
		acc1.positios = pos1;
		acc1.createDate = LocalDate.of(2021, 10, 06);
		Account acc2 = new Account();
		acc2.AccountId = 2;
		acc2.Email = "email2@gmail.com";
		acc2.userName = "user2";
		acc2.fullName = "fullname2";
		acc2.departmentId = 2;
		acc2.positionId = 2;
		acc2.department = dep2;
		acc2.positios = pos2;
		acc2.group = new Group[2];
		acc2.group[0] = gr1;
		acc2.group[1] = gr2;
		
		Account acc3 = new Account();
		acc3.AccountId = 3;
		acc3.Email = "email3@gmail.com";
		acc3.userName = "user3";
		acc3.fullName = "fullname3";
		acc3.departmentId = 3;
		acc3.positionId = 3;
		acc3.department = dep3;
		acc3.positios = pos3;
		System.out.printf("|%5s|%15s|%15s|%15s|\n", "ID", "Email","Fullname" , "Department");
		
		Account[] account = new Account[3];
		account[0] = acc1;
		account[1] = acc2;
		account[2] = acc3;
		for(Account b : account)
		{
			System.out.printf("|%5s|%15s|%15s|%15s|\n" , b.AccountId,b.Email,b.fullName , b.department.departmentName);
			
		}
		
		
	}
	static void Exercise3()
	{
		department dep1 = new department();
		dep1.departmentId = 1;
		dep1.departmentName = "Phong ban 1";
		
		department dep2 = new department();
		dep2.departmentId = 2;
		dep2.departmentName = "Phong ban 2";
		
		department dep3 = new department();
		dep3.departmentId = 2;
		dep3.departmentName = "Phong ban 3";
		
		Position pos1 = new Position();
		pos1.positionId = 1;
		pos1.positionName = "Dev";
		
		Position pos2 = new Position();
		pos2.positionId = 2;
		pos2.positionName = "Test";
		
		Position pos3 = new Position();
		pos3.positionId = 3;
		pos3.positionName = "Scrum master";
		
		Position pos4 = new Position();
		pos4.positionId = 3;
		pos4.positionName = "PM";
		
		Group gr1 = new Group();
		gr1.GroupId = 1;
		gr1.groupName = "group 1";
		gr1.creatorId = 1;
		
		Group gr2 = new Group();
		gr2.GroupId = 2;
		gr2.groupName = "group 2";
		gr2.creatorId = 2;
		
		
		Group gr3 = new Group();
		gr3.GroupId = 3;
		gr3.groupName = "group 3";
		gr3.creatorId = 3;
		
		Account acc1 = new Account();
		acc1.AccountId = 1;
		acc1.Email = "email1@gmail.com";
		acc1.userName = "user1";
		acc1.fullName = "fullname1";
		acc1.departmentId = 1;
		acc1.positionId = 1;
		acc1.department = dep1;
		acc1.positios = pos1;
		acc1.createDate = LocalDate.of(2021, 10, 06);
		Account acc2 = new Account();
		acc2.AccountId = 2;
		acc2.Email = "email2@gmail.com";
		acc2.userName = "user2";
		acc2.fullName = "fullname2";
		acc2.departmentId = 2;
		acc2.positionId = 2;
		acc2.department = dep2;
		acc2.positios = pos2;
		acc2.group = new Group[2];
		acc2.group[0] = gr1;
		acc2.group[1] = gr2;
		
		Account acc3 = new Account();
		acc3.AccountId = 3;
		acc3.Email = "email3@gmail.com";
		acc3.userName = "user3";
		acc3.fullName = "fullname3";
		acc3.departmentId = 3;
		acc3.positionId = 3;
		acc3.department = dep3;
		acc3.positios = pos3;
		
		GroupAccount gracc1 = new GroupAccount();
		gracc1.groupId = 1;
		gracc1.AccountId = 1;
		gracc1.account = new Account[2];
		gracc1.account[0] = acc1;
		gracc1.account[1] = acc2;
		
		CategoryQuestion cq1 = new CategoryQuestion();
		cq1.CategoryId = 1;
		cq1.CategoryName = "CategoryName1";
		
		CategoryQuestion cq2 = new CategoryQuestion();
		cq2.CategoryId = 2;
		cq2.CategoryName = "CategoryName2";
		
		CategoryQuestion cq3 = new CategoryQuestion();
		cq3.CategoryId = 3;
		cq3.CategoryName = "CategoryName3";
		
		Exam ex1 = new Exam();
		ex1.examId = 1;
		ex1.code = "code1";
		ex1.title = "title1";
		ex1.categoryId = 1;
		ex1.duration = 60;
		ex1.creatorId = 1;
		ex1.createDate = LocalDateTime.now();
		
		Exam ex2 = new Exam();
		ex2.examId = 2;
		ex2.code = "code2";
		ex2.title = "title2";
		ex2.categoryId = 2;
		ex2.duration = 60;
		ex2.creatorId = 2;
		ex2.createDate = LocalDateTime.now();
		
		Exam ex3 = new Exam();
		ex3.examId = 3;
		ex3.code = "code3";
		ex3.title = "title3";
		ex3.categoryId = 3;
		ex3.duration = 60;
		ex3.creatorId = 3;
		ex3.createDate = LocalDateTime.now();
		// 1
		DateTimeFormatter dateFormatter = DateTimeFormatter.ofPattern("dd MMM yyyy", new Locale("vi", "VN"));
		String dateS = dateFormatter.format(ex1.createDate);
		System.out.println(dateS);
		// 2
		dateFormatter = DateTimeFormatter.ofPattern("dd MMM yyyy hh:mm:ss", new Locale("vi", "VN"));
		dateS = dateFormatter.format(ex1.createDate);
		System.out.println(dateS);
		//3
		dateFormatter = DateTimeFormatter.ofPattern("yyyy", new Locale("vi", "VN"));
		dateS = dateFormatter.format(ex1.createDate);
		System.out.println(dateS);
		// 4
		dateFormatter = DateTimeFormatter.ofPattern("MM/yyyy", new Locale("vi", "VN"));
		dateS = dateFormatter.format(ex1.createDate);
		System.out.println(dateS);
		// 5
		dateFormatter = DateTimeFormatter.ofPattern("MM-dd", new Locale("vi", "VN"));
		dateS = dateFormatter.format(ex1.createDate);
		System.out.println(dateS);
	}
	static void Exercise4()
	{
		//1
		int a;
		Random r = new Random();
		a = r.nextInt();
		System.out.println(a);
		// 2
		float b;
		b = r.nextFloat();
		System.out.println(b);
		// 3
		String[] studentName = new String[3];
		studentName[0] = "Nguyen Van A";
		studentName[1] = "Nguyen Van B";
		studentName[2] = "Nguyen Van C";
		System.out.println(studentName[0 + r.nextInt(3)]);
		// 4
		int date1 = (int)LocalDate.of(1995, 07, 24).toEpochDay();
		int date2 = (int)LocalDate.of(1995, 12, 20).toEpochDay();
		int result = date1 + r.nextInt(date2-date1+1);
		LocalDate date = LocalDate.ofEpochDay(result);
		System.out.println(date);
		// 5
		date1 = (int)LocalDate.now().toEpochDay();
		result = date1 - r.nextInt(366);
		date = LocalDate.ofEpochDay(result);
		System.out.println(date);
		// 6
		date1 = (int)LocalDate.now().toEpochDay();
		result = r.nextInt(date1+1);
		date = LocalDate.ofEpochDay(result);
		System.out.println(date);
		// 7
		a =100 + r.nextInt(1000);
		System.out.println(a);
		
	}
	static void Exercise5()
	{
		//1
		Scanner sc = new Scanner(System.in);
//		System.out.println("Nhap so nguyen 1: ");
//		int integerInput = sc.nextInt();
//		System.out.println("Nhap so nguyen 2: ");
//		int integerInput2 = sc.nextInt();
//		System.out.println("Nhap so nguyen 3: ");
//		int integerInput3 = sc.nextInt();
//		// 2
//		System.out.println("Nhap so thuc 1: ");
//		float f1 = sc.nextFloat();
//		System.out.println("Nhap so thuc 2: ");
//		float f2 = sc.nextFloat();
//		
//		// 3
//		String c=sc.nextLine();// bat ky tu enter bi thua
//		System.out.println("Nhap ho: ");
//		String ho = sc.nextLine();
//		System.out.println("Nhap ten: ");
//		String ten = sc.nextLine();
//		System.out.printf("ho va ten: %S %S\n", ho, ten);
//		// 4
//		System.out.println("Nhap ngay sinh nhat cua ban ");
//		System.out.println("Nhap ngay: ");
//		int day = sc.nextInt();
//		System.out.println("Nhap thang: ");
//		int month = sc.nextInt();
//		System.out.println("Nhap nam: ");
//		int year = sc.nextInt();
//		System.out.printf("Ngay sinh nhat cua ban la: %d/%d/%d", day, month, year);
//		// 5
//		Account acc1 = new Account();
//		acc1.Input();
//		acc1.Output();
//		// 6
//		department dep1 = new department();
//		dep1.Input();
//		// 7 
//		int soChan;
//		System.out.print("Nhap so chan: ");
//		soChan = sc.nextInt();
//		while(soChan % 2 != 0)
//		{
//			System.out.print("Khong phai so chan vui long nhap lai: ");
//			soChan = sc.nextInt();
//		}
//		// 8
//		boolean check = false;
//		while(!check)
//		{
//			System.out.print("moi ban nhap vao chuc nang muon su dung: ");
//			int menu = sc.nextInt();
//
//			switch(menu)
//			{
//				case 1:
//					acc1.Input();
//					check = !check;
//					break;
//				case 2:
//					dep1.Input();
//					check = !check;
//					break;
//				
//					
//			}
//		}
		// 9
		Account ac = new Account();
		ac.AccountId = 1;
		ac.Email = "email1";
		ac.userName = "username1";
		ac.fullName = "fullname1";
		ac.departmentId = 1;
		ac.positionId = 1;
		
		Account ac2 = new Account();
		ac2.AccountId = 2;
		ac2.Email = "email2";
		ac2.userName = "username2";
		ac2.fullName = "fullname2";
		ac2.departmentId = 2;
		ac2.positionId = 2;
		
		Account ac3 = new Account();
		ac3.AccountId = 3;
		ac3.Email = "email3";
		ac3.userName = "username3";
		ac3.fullName = "fullname3";
		ac3.departmentId = 3;
		ac3.positionId = 3;
		
		Account acc[] = new Account[3];	
		acc[0] = ac;
		acc[1] = ac2;
		acc[2] = ac3;

		System.out.print("Nhap vao username cua account: ");
		String userName = sc.nextLine();
		
		for(Account a:acc)
		{
			System.out.println(a.userName);
		}
		
		Group gr = new Group();
		gr.GroupId = 1;
		gr.groupName = "Group1";
		gr.creatorId = 1;
		
		Group gr2 = new Group();
		gr2.GroupId = 2;
		gr2.groupName = "Group2";
		gr2.creatorId = 2;
		
		Group gr3 = new Group();
		gr3.GroupId = 3;
		gr3.groupName = "Group3";
		gr3.creatorId = 3;
		
		Group[] gr1 = new Group[3];
		gr1[0] = gr;
		gr1[1] = gr2;
		gr1[2] = gr3;
		for(Group g:gr1)
		{
			System.out.println(g.groupName);
		}
		System.out.print("Nhap vao ten group: ");
		String groupName = sc.nextLine();
	}
}
	 