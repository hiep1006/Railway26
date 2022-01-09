import java.io.File;
import java.io.IOException;

public class FileManager {
	
	public void CheckFile(String path)
	{
		File f = new File(path);
		
		if(f.exists())
			System.out.println("FIle nay ton tai");
		else
			System.out.println("FIle nay khong ton tai");
	}
	public void CreateFile(String path) throws IOException
	{
		File f = new File(path);
		f.createNewFile();
	}
}
