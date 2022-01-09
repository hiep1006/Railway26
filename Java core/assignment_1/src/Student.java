
public class Student {
	String name;
	final int id;
	static int count = 0;
	public Student()
	{
		count++;
		this.id = count;
	}
	@Override
	public String toString() {
		return "Student [name=" + name + ", id=" + id + "]";
	}
	
}
