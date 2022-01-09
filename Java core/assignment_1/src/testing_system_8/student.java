package testing_system_8;

public class student<T> {
	private static int count = 0;
	private int id;
	private String name;
	public student(String name) {
		count++;
		this.id = count;
		this.name = name;
		
	}
	@Override
	public String toString() {
		return "student [id=" + id + ", name=" + name + "]";
	}
	public String getName() {
		return name;
	}
	
	
}
