package testing_system_6;

import java.util.Scanner;

public class ScannerUtils {
	static int count = 0;
	private Scanner sc;
	private int age;
	private int id;
	public ScannerUtils() throws Exception
	{
		count++;
		sc = new Scanner(System.in);
		this.age = inputInt("loi roi!");
		this.id = count;
	}
	private int inputInt(String errorMessage) throws Exception
	{
		try {
			System.out.println("Nhap tuoi: ");
			int age = sc.nextInt();
			return age;
		} catch (Exception e) {
			throw new Exception(errorMessage);
		}
	}
	private float inputFloat() throws Exception
	{
		try {
			
		} catch (Exception e) {
			throw new Exception();
		}
		return 0;
	}
	private double inputDouble() throws Exception
	{
		try {
			
		} catch (Exception e) {
			throw new Exception();
		}
		return 0;
	}
	
	private String inputString()
	{
		
		return "";
	}
}
