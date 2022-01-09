package FileIOStream;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

public class Program2 {

	public static void main(String[] args) throws IOException, ClassNotFoundException {
		// TODO Auto-generated method stub
		FileInputStream fileInputStream = new FileInputStream("C:\\Users\\ADMIN\\Desktop\\test\\Student.ser");
		ObjectInputStream objectInputStream = new ObjectInputStream(fileInputStream);
		Object object =  objectInputStream.readObject();
		objectInputStream.close();
		
		Student s = (Student) object;
		System.out.println(s.getId());
		System.out.println(s.getName());
	}

}
