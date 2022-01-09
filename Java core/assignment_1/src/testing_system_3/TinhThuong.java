package testing_system_3;

import java.util.Scanner;

public class TinhThuong {
	private int a, b;
	TinhThuong()
	{
		Scanner sc = new Scanner(System.in);
		System.out.print("Nhap a: ");
		a = sc.nextInt();
		System.out.print("Nhap b: ");
		b = sc.nextInt();
	}
	public float Output()
	{
		return (float)a / b;
	}
}
