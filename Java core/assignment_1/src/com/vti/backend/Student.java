package com.vti.backend;

public class Student {
	private int id = 0;
	private String name;
	private String hometown;
	private float diem;
	public Student(String name,String hometown)
	{
		this.id = ++id;
		this.name = name;
		this.hometown = hometown;
		this.diem = 0;
	}
	public void Setdiem(float diem)
	{
		this.diem = diem;
	}
	public void Themdiem(float them)
	{
		this.diem += them;
	}
	public void Show() {
		System.out.println(this.name);
		System.out.print(this.diem + " => ");
		if(diem < 4)
			System.out.println("yeu");
		else if(diem >= 4 && diem < 6)
			System.out.println("trung binh");
		else if(diem >= 6 && diem < 8)
			System.out.println("kha");
		else
			System.out.println("gioi");
	}
}
