package testing_system_3;

import java.util.Random;
import java.util.Scanner;

import javax.sql.rowset.serial.SQLOutputImpl;

public class testing_system_3 {
	public static void main(String[] args) {
		testing_system_3 t = new testing_system_3();
		t.Exercise4();
		
	}
	void Exercise1()
	{
		// 1
		float luong1 = 5240.5f, luong2 = 10970.055f;
		int _luong1 = (int)luong1, _luong2 = (int)luong2;
		System.out.println("luong cua account 1: " + _luong1 + " luong cua account 2: " + _luong2);
		// 2
		int a;
		Random r = new Random();
		a = 0 + r.nextInt(100000);
		a = 9999;
		String result = "";
		if(a < 10000 && a > 1000)
		{
			String s = null;
			result = "0" + s.valueOf(a);
		}
		else if(a < 1000 && a > 100)
		{
			String s = null;
			result = "00" + s.valueOf(a);
		}
		else if(a < 100 && a > 10)
		{
			String s = null;
			result = "000" + s.valueOf(a);
		}
		else
		{
			String s = null;
			result = "0000" + s.valueOf(a);
		}
		System.out.println("result: "+result);
		// 3
		System.out.println(a % 100);
		// 4
		TinhThuong t = new TinhThuong();
		System.out.println("thuong: " + t.Output());
		
	}
	void Exercise2()
	{
		
	}
	void Exercise3()
	{
		// 1
		Integer i = new Integer(5000);
		float f = i;
		System.out.println(f);
		// 2
		String s = "1234567";
		int ii = Integer.parseInt(s);
		System.out.println(ii);
		// 3
		Integer a = new Integer(1234567);
		int a1 = a;
		System.out.println(a1);
		
	}
	void Exercise4()
	{
		// 1
		String s = "skj  asbd";
		int count = 0;
		for (int i = 0; i < s.length(); i++) {
			if(!Character.isSpace(s.charAt(i)))
	        count++;
	    }
		System.out.println(count);
		// 2
		String s1 = "sdifsdinf sdnfsdf ds";
		String s2 = "sdfm smdfk sdf";
		String s3 = s1 + s2;
		System.out.println(s3);
		// 3
		String name;
		System.out.print("Nhap vao ten: ");
		Scanner sc = new Scanner(System.in);
		name = sc.nextLine();
		String[] parts = name.split(" ");
		String result = "";
		for (int i = 0; i < parts.length; i++) {
			String[] a = new String[2];
			String abc = String.valueOf(parts[i].charAt(0));
			a[0] = abc.toUpperCase();
			String abc1 = String.valueOf(parts[i].charAt(i));
			//System.out.println(parts[i].length());
			a[1] = "";
			for (int j = 0; j < parts[i].length(); j++) {
				
				if(j > 0)
				{
					a[1] = a[1] + String.valueOf(parts[i].charAt(j));
				}
				
			}
			System.out.print(a[0]);
			System.out.print(a[1] + " ");
		}
		// 4
		System.out.print("Nhap vao ten: ");
		//Scanner sc = new Scanner(System.in);
		name = sc.nextLine();
		for (int i = 0; i < name.length(); i++) {
			System.out.println(name.charAt(i));
		}
		// 5
		String ho, ten;
		System.out.print("Nhap ho: ");
		ho = sc.nextLine();
		System.out.print("Nhap ten: ");
		ten = sc.nextLine();
		System.out.println(ho + " " + ten);
		// 6
		System.out.print("Nhap ho ten day du: ");
		String fullName = sc.nextLine();
		String parts1[] = fullName.split(" ");
		String ho1 = "";
		String tenDem = "";
		String ten1 = "";
		
		for (int i = 0; i < parts1.length; i++) {
			if(i == 0)
				ho1 =ho1 + parts1[i];
			else if(i == parts1.length - 1)
				ten1 = ten1 + parts1[i];
			else
				tenDem = tenDem + " " + parts1[i];
				
		}
		System.out.println("ho: " + ho1);
		System.out.println("ten dem: " + tenDem);
		System.out.println("ten: " + ten1);
		// 7
		System.out.print("Nhap ho ten day du: ");
		fullName = sc.nextLine();
		
		ho1 = "";
		tenDem = "";
		ten1 = "";

		for (int i = 0; i < fullName.length(); i++) {
			StringBuilder sb = new StringBuilder(fullName);
			if(Character.isSpace(fullName.charAt(i)))
			{
				fullName = sb.deleteCharAt(i).toString();
			}
				
			else
				break;
		
		}
		for (int i = fullName.length() - 1; i >= 0; i--) {
			StringBuilder sb = new StringBuilder(fullName);
			if(Character.isSpace(fullName.charAt(i)))
			{
				fullName = sb.deleteCharAt(i).toString();
				
			}
				
			else
				break;
			
		}
		System.out.println(fullName);
		// 10
		String chuoi1 = "abcde";
		String chuoi2 = "edcba";
        StringBuilder str = new StringBuilder(chuoi1);
        if(str.reverse().toString().equals(chuoi2))
        	System.out.println(chuoi2 + " la dao nguoc cua " + chuoi1);
        else
        	System.out.println(chuoi2 + " khong la dao nguoc cua " + chuoi1);
		// 11
		String chuoi = "sdudasaasdaasdsdsd1";
		int count1 = 0;
		for (int i = 0; i < chuoi.length(); i++) {
			if(chuoi.charAt(i) == 'a')
				count1++;
		
		}
		System.out.println(count1);
		// 12
		String result1 = "";
		for (int i = chuoi1.length() - 1; i >= 0; i--) {
			result1 += chuoi1.charAt(i);
		}
		System.out.println(result1);
		// 13
		boolean check = false;
		for (int i = 0; i < chuoi.length(); i++) {
			if(Character.isDigit(chuoi.charAt(i)))
				check = true;
		}
		System.out.println(check);
		// 14
		chuoi = "VTI Academy";
		result = "";
		result = result + chuoi.replace('e', '*');
		System.out.println(result);
		// 15
		chuoi = " I am developer ";
		String tach[] = chuoi.split(" ");
		for (int i = tach.length - 1; i >= 0; i--) {
			System.out.print(tach[i] + " ");
		}
		// 16
		System.out.print("Nhap n: ");
		int n = sc.nextInt();
		System.out.print("Nhap chuoi: ");
		sc.nextLine();
		String str1 = sc.nextLine();
		int count2 = 0;
		for (int i = 0; i < str1.length(); i++) {
			count2++;
		}
		System.out.println(count2);
		if(count2 % n == 0)
		{
			
			for (int i = 0; i < str1.length(); i++) {
				
				if(i % n == 0 && i > 0)
					System.out.print(" ");
				System.out.print(str1.charAt(i));
			}
		}
		else
			System.out.println("KO");
		
	}
}
