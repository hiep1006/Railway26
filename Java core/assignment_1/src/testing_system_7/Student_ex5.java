package testing_system_7;

import java.io.Serializable;

public class Student_ex5 implements Serializable {
	private int id;
	private String name;
	public Student_ex5(int id, String name)
	{
		this.id = id;
		this.name = name;
	}
	public int getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	@Override
	public String toString() {
		return "Student_ex5 [id=" + id + ", name=" + name + "]";
	}
	
}
