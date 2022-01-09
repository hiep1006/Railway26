package testing_system_8;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.Stack;

public class Collection {

	public static void main(String[] args) {
		// 1
//		student s = new student("Abc");
//		student s1 = new student("Abc");
//		student s2 = new student("Abc");
//		student s3 = new student("djkfnjdng");
//		student s4 = new student("phan tu 4");
//		student s5 = new student("add first");
//		ArrayList<student> arr = new ArrayList<>();
//		arr.add(s);
//		arr.add(s1);
//		arr.add(s2);
//		arr.add(s3);
//		arr.add(s4);
//		int count = 0;
//		for (student i:arr) {
//			count++;
//		}
//		System.out.println(count);
//		System.out.println(arr.get(4).getId());
//		System.out.println(arr.get(4).getName());
//		
//		System.out.println(arr.get(0).getId());
//		System.out.println(arr.get(0).getName());
//		
//		System.out.println(arr.get(count - 1).getId());
//		System.out.println(arr.get(count - 1).getName());
//		
//		arr.add(0, s5);
//		System.out.println(arr.get(0).getId());
//		System.out.println(arr.get(0).getName());
		// 2
//		student s = new student("Nguyễn Văn Nam");
//		student s1 = new student("Nguyễn Văn Huyên");
//		student s2 = new student("Trần Văn Nam");
//		student s3 = new student("Nguyễn Văn A");
//		Stack<student> arr = new Stack();
//		arr.push(s);
//		arr.push(s1);
//		arr.push(s2);
//		arr.push(s3);
//		while(!arr.isEmpty())
//		{
//			System.out.println(arr.pop().getName());
//			
//		}
//		
//		Queue<student> arr1 = new LinkedList<>();
//		arr1.add(s);
//		arr1.add(s1);
//		arr1.add(s2);
//		arr1.add(s3);
//		while(!arr1.isEmpty())
//		{
//			System.out.println(arr1.poll().getName());
//		}
		Map<Integer, String> map = new HashMap<Integer, String>();
		map.put(1, "Nguyen Van A");
		map.put(2, "Nguyen Van B");
		map.put(3, "Nguyen Van C");
		Set<Integer> set = map.keySet();
        for (Integer key : set) {
            System.out.println(key);
        }
        for (Integer key : set) {
            System.out.println(map.get(key));
        }
        for (Integer key : set) {
        	System.out.println(key + " " + map.get(key));
        }
	}

}
