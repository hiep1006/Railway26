package testing_system_8;

public class Student2<T extends Number> {
	
	private T id;
	private String name;
	public Student2(T id,String name) {
		
		this.id = id;
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
