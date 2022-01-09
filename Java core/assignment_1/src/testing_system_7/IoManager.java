package testing_system_7;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;


public class IoManager {
	public String readFile(String pathFile) throws IOException
	{
		FileManager f = new FileManager();
		f.CheckExistsFile(pathFile);
		File file = new File(pathFile);
		FileInputStream fileInput = new FileInputStream(file);
		byte[] b = new byte[1024];
		int length = fileInput.read(b);
		String result = "";
		while(length > -1)
		{
			String content = new String(b , 0 , length);
			result += content;
			length = fileInput.read(b);
		}
		fileInput.close();
		return result;
		
	}
	
	public void writeFile(String pathFile,boolean isContinuing, String content) throws IOException
	{

		FileOutputStream fileOutput = new FileOutputStream(pathFile , isContinuing);
		fileOutput.write(content.getBytes());
		
		fileOutput.close();
	}
	
	public void writeObject(Object object, String path, String fileName) throws Exception
	{
		String pathFile = path + "\\" + fileName;
		if(object == null)
		{
			throw new Exception("Error! Object is Null.");
		}
		FileOutputStream fileOutput = new FileOutputStream(pathFile , false);
		ObjectOutputStream objOutputStream = new ObjectOutputStream(fileOutput);
		objOutputStream.writeObject(object);
		
		fileOutput.close();
	}
	public Object readObject(String filePath, Object obj) throws IOException, ClassNotFoundException
	{
		FileInputStream fileInputStream = new FileInputStream(filePath);
		ObjectInputStream objectInputStream = new ObjectInputStream(fileInputStream);
		obj = objectInputStream.readObject();
		objectInputStream.close();
		return obj;
	}
}
