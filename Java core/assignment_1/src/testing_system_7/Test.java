package testing_system_7;

import java.io.Serializable;

public class Test implements Serializable{
	private String content;
	public Test(String content)
	{
		this.content = content;
	}
	public String getContent() {
		return content;
	}
	@Override
	public String toString() {
		return "Test [content=" + content + "]";
	}
	
	
}
