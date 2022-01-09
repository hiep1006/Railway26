package testing_system_7;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.channels.Channels;
import java.nio.channels.ReadableByteChannel;
import java.util.ArrayList;
import java.util.List;

public class FileManager {
	public void CheckExistsFile(String dirFile)
	{
		File f = new File(dirFile);
		if(f.exists())
			System.out.println("File nay ton tai");
		else
			System.out.println("File nay khong ton tai");
	}
	public void CreateFile(String pathFile) throws Exception
	{
		File f = new File(pathFile);
		if(f.exists()) 
			throw new Exception("Error! File Not Exist.");
		else
			f.createNewFile();		
	
	}
	public void DeleteFile(String pathFile)
	{
		File f = new File(pathFile);
		f.delete();
	}
	public boolean isFolder(String path)
	{
		File f = new File(path);
		if(f.exists())
		{
			if(f.isFile())
			{
				return true;
			}
			else
				return false;
		}
		return false;
	}
	public List<String> getAllFileName(String path) throws Exception
	{
	
		List<String> l = new ArrayList<>();
		File f = new File(path);
		if(isFolder(path))
		{
			throw new Exception("Error! Path is not folder.");
		}
		else
			for(String s: f.list())
			{
				l.add(s);
			}
		return l;
	}
	File file;
	String copyFile;
	public void copyFile(String sourceFile, String distinationPath, String newName) throws Exception
	{
		file = new File(distinationPath + "\\" + sourceFile);
		if(!file.exists())
		{
			throw new Exception("Error! Source File Not Exist.");
		}
	
		//file.renameTo(new File(distinationPath + "\\" + newName));
			
	}
	public void copyFile(String sourceFile, String newPath) throws Exception
	{
		File f = new File(newPath + "\\" + sourceFile);
		if(f.exists())
		{
			throw new Exception("Error! newPath has File same name.");
		}
		file.renameTo(new File(newPath + "\\" + sourceFile));
	}
	
	public void RenameFile(String path, String newName) throws Exception
	{
		File f = new File(path);
		if(!f.exists())
		{
			throw new Exception("Error! File Not Exist.");
		}
		String result = "";
		for(int i = 0; i < path.length(); i++)
		{
			if(f.getName().charAt(0) == path.charAt(i) && f.getName().charAt(1) == path.charAt(i + 1) && f.getName().charAt(2) == path.charAt(i + 2))
				break;
			result = result + path.charAt(i);
			
		}
	
		File f1 = new File(result + "\\" + newName);
		if(f1.exists())
		{
			throw new Exception("Error! Name is Exist.");
		}
		f.renameTo(f1);
	}
	public void createNewFolder(String newPathFolder) throws Exception
	{
		File f = new File(newPathFolder);
		if(f.exists())
		{
			throw new Exception("Error! Folder Exist.");
		}
		else
			f.mkdir();
	}
	public void downloadFile(String fileLink, String folder) throws IOException 
	{
		File f = new File(folder);
		if(!f.exists())
		{
			f.mkdir();
		}
		URL url = new URL(fileLink);
        ReadableByteChannel rbc = Channels.newChannel(url.openStream());
        FileOutputStream fos = new FileOutputStream(new File(folder + "\\file.txt"));
        fos.getChannel().transferFrom(rbc, 0, Long.MAX_VALUE);
        fos.close();
        rbc.close();
	}
}
