package FileIOStream;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;

public class Program {

	public static void main(String[] args) throws IOException {
		// TODO Auto-generated method stub
		Student s = new Student(1 , "Studen1");
//		Student s1 = new Student(2 , "Studen2");
//		Student s2 = new Student(3 , "Studen3");
		FileOutputStream fileOutputStream = new FileOutputStream("C:\\Users\\ADMIN\\Desktop\\test\\Student.ser");
		ObjectOutputStream objectOutputStream = new ObjectOutputStream(fileOutputStream);
		objectOutputStream.writeObject(s);
//		objectOutputStream.writeObject(s1);
//		objectOutputStream.writeObject(s2);
		
	}

}
