package com.vti.frontend.Encapsulation;

import com.vti.backend.Student;

public class Encapsulation {
	public static void main(String[] args) {
		Encapsulation e = new Encapsulation();
		e.question1();
	}
	void question1()
	{
		Student s = new Student("Nguyen Van Hiep" , "Ha Noi");
		s.Setdiem(5);
		s.Themdiem(4);
		s.Show();
	}
	
	void question2()
	{
		
	}
}
