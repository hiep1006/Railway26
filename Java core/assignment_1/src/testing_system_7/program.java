package testing_system_7;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Scanner;

public class program {

	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		// Question 1
//		student s = new student(1, "Nguyen Van A");
//		student s1 = new student(2, "Nguyen Van B");
//		student s2 = new student(3, "Nguyen Van C");
//		student arrS[] = {s , s1, s2};
//		for (student student : arrS) {
//			System.out.println(student.toString());
//			
//		}
//		for (student student : arrS) {
//			student.SetCollege("Dai hoc Cong Nghe");
//			
//		}
//		for (student student : arrS) {
//			System.out.println(student.toString());
//			
//		}
//		// Question 2
//		for (student student : arrS) {
//			student.NopQuy(100000);
//			
//		}
//		s.Mua(50000, "Bim bim");
//		s1.Mua(20000, "Banh my");
//		s2.Mua(150000, "Do dung hoc tap");
//		for (student student : arrS) {
//			student.NopQuy(50000);
//		}
//		System.out.println(student.moneyGroup);
//		// Question 5
//		System.out.println(student.count);
		// Question 6
//		student s1 = new PrimaryStudent(1 , "Nguyen Van A");
//		student s2 = new PrimaryStudent(2 , "Nguyen Van B");
//		student s3 = new SecondaryStudent(3 , "Nguyen Van C");
//		student s4 = new SecondaryStudent(4 , "Nguyen Van D");
//		student s5 = new SecondaryStudent(5 , "Nguyen Van E");
//		student s6 = new SecondaryStudent(6 , "Nguyen Van F");
//		System.out.println(PrimaryStudent.count);
//		System.out.println(SecondaryStudent.count);
//		
//		// Question 7
//		student s7 = new SecondaryStudent(7 , "Nguyen Van G");
//		student s8 = new SecondaryStudent(8 , "Nguyen Van H");
//		student s9 = new SecondaryStudent(8 , "Nguyen Van H");
//		student s10 = new SecondaryStudent(8 , "Nguyen Van H");
//		System.out.println(student.count);
		// Exercise 3: File
		// Question 1
		FileManager f = new FileManager();
//		f.CheckExistsFile("C:\\Users\\ADMIN\\Desktop\\test\\file.txt");
		// Question 2
//		f.CreateFile("C:\\Users\\ADMIN\\Desktop\\test\\testCreate.txt");
		// Question 4:
//		f.DeleteFile("C:\\Users\\ADMIN\\Desktop\\test\\file.txt");
		// Question 5
//		if(f.isFolder("C:\\Users\\ADMIN\\Desktop\\test"))
//		{
//			System.out.println("day la file");
//		}
//		else
//			System.out.println("day co the la folder hoac khong ton tai");
		// Question 6
		//System.out.println(f.getAllFileName("C:\\Users\\ADMIN\\Desktop\\test"));
		// Question 7
//		f.copyFile("testCreate.txt" , "C:\\Users\\ADMIN\\Desktop\\test", "newFile.txt");
//		f.copyFile("newFile.txt", "C:\\Users\\ADMIN\\Desktop\\test\\a");
		// Question 9
		//f.RenameFile("C:\\Users\\ADMIN\\Desktop\\test\\newFile.txt", "newFile1.txt");
		// Question 10
		//f.createNewFolder("C:\\Users\\ADMIN\\Desktop\\test\\b");
		// Question 11
		//f.downloadFile("https://cdn.discordapp.com/attachments/900478803774677043/922797604113367060/hosts", "C:\\Users\\ADMIN\\Desktop\\test");
		// Exercise 4 (Optional): IO Stream
		// Question 1
		IoManager i = new IoManager();
//		System.out.println(i.readFile("C:\\Users\\ADMIN\\Desktop\\test\\file.txt"));
		
		// Question 2
		//i.writeFile("C:\\Users\\ADMIN\\Desktop\\test\\file.txt", true, "noi dung 2");
		// Question 3
		//Test t = new Test("abc");
		//i.writeObject(t, "C:\\Users\\ADMIN\\Desktop\\test", "WriteObjectFile.ser");
		// Question 4
		//System.out.println(i.readObject("C:\\Users\\ADMIN\\Desktop\\test\\WriteObjectFile.ser", t).toString());
		
		// Exercise 5: Demo File & IO Stream
		// Question 1:
		Student_ex5[] student = new Student_ex5[3];
		Scanner s = new Scanner(System.in);
		for (int j = 0; j < 3; j++) {
			System.out.print("Enter id: ");
			int id = s.nextInt();
			s.nextLine();
			System.out.print("Enter name: ");
			String name = s.nextLine();
			student[j] = new Student_ex5(id , name);
		}
		FileOutputStream fileOutputStream = new FileOutputStream("C:\\Users\\ADMIN\\Desktop\\test\\StudentInformation.txt");
		ObjectOutputStream objOutputStream = new ObjectOutputStream(fileOutputStream);
		for (int j = 0; j < 3; j++) {
			objOutputStream.writeObject(student[j].toString());
		}
		
		objOutputStream.close();
		
		FileInputStream fileInputStream = new FileInputStream("C:\\Users\\ADMIN\\Desktop\\test\\StudentInformation.txt");
		ObjectInputStream objInputStream = new ObjectInputStream(fileInputStream);
		for (int j = 0; j < 3; j++) {
			Object obj = student[j];
			Student_ex5 s_ex5 =(Student_ex5) obj;
			System.out.println(s_ex5.getId());
			System.out.println(s_ex5.getName());	
		}
		objInputStream.close();
	}

}
