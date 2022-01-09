package testing_system_6;

import java.util.Scanner;

import com.vti.entity.department;

public class Program2 {
	public static void main(String[] args) {
		// Question 1
//		try {
//			float result = divide(7 , 0);
//			System.out.println(result);
//		} catch (Exception e) {
//			System.err.println("cannot divide 0");
//		}
		// Question 2
//		try {
//			float result = divide(7 , 0);
//			System.out.println(result);
//		} catch (Exception e) {
//			System.err.println("cannot divide 0");
//		}
//		finally
//		{
//			System.out.println("divide completed!");
//		}
		// Question 3
//		try {
//			int [] number = { 1, 2, 3};
//			System.out.println(number[10]);
//		} catch (Exception e) {
//			System.err.println(e.getMessage());
//		}
		Program2 p = new Program2();
		// Question 4
//		
//		try {
//			p.getIndex(10);
//			
//		} catch (Exception e) {
//			System.err.println("Cannot find department.");
//		}
		// Question 5 + 6
		System.out.println(p.inputAge());
		
	}
	
	public static float divide(int a, int b)
	{
		return a / b;
	}
	
	public void getIndex(int index)
	{
		department d1 = new department();
		d1.setDepartmentId(1);
		d1.setDepartmentName("department1");
		department d2 = new department();
		d2.setDepartmentId(2);
		d2.setDepartmentName("department2");
		department d3 = new department();
		d1.setDepartmentId(3);
		d1.setDepartmentName("department3");
		department[] d = {d1 , d2, d3};
		System.out.println(d[index].toString());
		
		
	}
	public int inputAge()
	{
		boolean isCorrect = false;
		Scanner s = new Scanner(System.in);
		int b = 0;
		while (!isCorrect) {
			String a = "";
			
			try {
				
				System.out.println("Nhap vao 1 so: ");
				a = s.nextLine();
				b = Integer.parseInt(a);
				isCorrect = true;
				
				
			} catch (Exception e) {
				System.err.println("wrong inputing! Please input an age as int, input again.");
				System.out.println("Nhap lai: ");
			}
		}
		
		
		return b;
	}
	
	
}
