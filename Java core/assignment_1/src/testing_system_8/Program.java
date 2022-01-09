package testing_system_8;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.Stack;

public class Program<T> {
	
	public static void main(String[] args) {
		// Exercise 1: Collection
		// Question 1: 
//		List<student> list = new ArrayList<>();
//		list.add(new student("Nguyen Van A"));
//		list.add(new student("Nguyen Van A"));
//		list.add(new student("Nguyen Van A"));
//		list.add(new student("Nguyen Van B"));
//		list.add(new student("Nguyen Van C"));
//		System.out.println(list.size());
//		System.out.println(list.get(3));
//		System.out.println(list.get(0));
//		System.out.println(list.get(list.size() - 1));
//		list.add(0, new student("Them vao phan tu dau"));
//		System.out.println(list.get(0));
//		list.add(list.size(), new student("Them vao phan tu cuoi"));
//		System.out.println(list.get(list.size() - 1));
//		Collections.reverse(list);
//		System.out.println("dao nguoc: ");
//		for (int i = 0; i < list.size(); i++) {
//			System.out.println(list.get(i));
//		}
		// Question 2:
		Program p = new Program();
		//p.InStack();
		//p.InQueue();
		// Question 6:
//		Map m = new HashMap();
//		m.put(1, "Nguyen Van A");
//		m.put(2, "Nguyen Van B");
//		m.put(3, "Nguyen Van C");
//		Set set = m.keySet();
//		for (Object key : set) {
//            System.out.println(key + " " + m.get(key));
//        }
		
		// Exercise 2 (Optional): Comparing
		// Question 1:
		
//		
//		List<Student1> list = new ArrayList<Student1>();
//		list.add(new Student1 (1 , "ABC" , "10-10-1999" , 5));
//		list.add(new Student1 (1 , "ACB" , "10-10-1999" , 6));
//		list.add(new Student1 (1 , "BCA" , "10-10-1999" , 8));
//		list.add(new Student1 (1 , "BAC" , "10-10-1999" , 4));
//		list.add(new Student1 (1 , "CAB" , "10-10-1999" , 4));
//		
//		Collections.sort(list);
//		
//		for (Student1 student1 : list) {
//			System.out.println(student1);
//		}
		
		// Exercise 3: Generic
		// Question 1:
		
//		Student2<Integer> s = new Student2<Integer>(new Integer(1) , "Nguyen Van A");
//		Student2<Float> s1 = new Student2<Float>(new Float(2f) , "Nguyen Van B");
//		Student2<Double> s2 = new Student2<Double>(new Double(3d) , "Nguyen Van C" );
//		System.out.println(s.toString());
//		System.out.println(s1.toString());
//		System.out.println(s2.toString());
		
		// Question 2:
//		Program<Student2> p3 = new Program<Student2>();
//		p3.print(s1);
//		Program<Integer> p1 = new Program<Integer>();
//		p1.print(new Integer(4));;
//		Program<Float> p2 = new Program<Float>();
//		p2.print(new Float(4d));
		
		// Question 4:
//		Integer[] arrayInt = {1 , 2, 3};
//		Float[] arrayFloat = {1f, 2f, 3f};
//		Long[] arrayLong = {1l , 2l, 3l};
//		Double[] arrayDouble = {1d, 2d, 3d};
//		Program program = new Program();
//		program.array(arrayInt);
//		program.array(arrayFloat);
//		program.array(arrayLong);
//		program.array(arrayDouble);
		
		// Question 5:
//		Integer[] salary = {100, 200 ,300, 300 , 300 , 300, 300, 300, 300, 300 , 300 , 500};
//		Employee e = new Employee(1 , "Nguyen Van A" , salary);
//		System.out.println(e.toString());
//		System.out.println(e.ThangLuongCuoi());
		
		// Question 6:
//		MyMap<Integer,String> m = new MyMap<Integer,String>(1955010084, "Nguyen Van Hiep");
//		System.out.println(m.GetKey());
//		System.out.println(m.GetValue());
		// Question 7
//		Phone phone = new Phone("email1@gmail.com" , "0123456789");
//		System.out.println(phone.GetKey());
//		System.out.println(phone.GetPhoneNumber());
//		Phone phone2 = new Phone(1 , "0123456789");
//		System.out.println(phone2.GetKey());
//		System.out.println(phone2.GetPhoneNumber());
//		Phone phone3 = new Phone("Nguyen Van A" , "0123456789");
//		System.out.println(phone3.GetKey());
//		System.out.println(phone3.GetPhoneNumber());
		
		// Question 8:
//		Staff staff = new Staff(1 , "staff1");
//		System.out.println(staff.GetId());
//		System.out.println(staff.getName());
		
		
//		Salary<Integer> s = new Salary<Integer>(1000000);	
//		s.print();
//		Salary<Float> s1 = new Salary<Float>(2000000f);	
//		s1.print();
		
		
//		@SuppressWarnings("deprecation")
//		Date d = new Date("2021/05/18");
//		System.out.println(d);
	}
	public void array(T a[])
	{
		for (T t : a) {
			System.out.println(t);
		}
	}
	public void print(T a)
	{
		System.out.println(a);
	}
	public void InStack()
	{
		Stack<student> s = new Stack<>();
		
		s.push(new student("Nguyễn Văn Nam"));
		s.push(new student("Nguyễn Văn Huyên"));
		s.push(new student("Trần Văn Nam"));
		s.push(new student("Nguyễn Văn A"));
		int j = s.size();
		for (int i = 0; i < j ; i++) {
			
			System.out.println(s.peek());
			s.pop();
		}
	}
	public void InQueue()
	{
		Queue<student> q2 = new LinkedList<>();
		q2.add(new student("Nguyễn Văn Nam"));
		q2.add(new student("Nguyễn Văn Huyên"));
		q2.add(new student("Trần Văn Nam"));
		q2.add(new student("Nguyễn Văn A"));
		int j = q2.size();
		for (int i = 0; i < j ; i++) {
			System.out.println(q2.remove());
			
		}
	}
	
	
}
