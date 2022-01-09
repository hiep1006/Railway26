package testing_system_8;



public class Student1 implements Comparable<Student1>{
	private int id;
	private String name;
	private String ngaySinh;
	private float diem;
	
	public Student1(int id, String name, String ngaySinh, float diem) {
		super();
		this.id = id;
		this.name = name;
		this.ngaySinh = ngaySinh;
		this.diem = diem;
	}
	@Override
	public String toString() {
		return "Student1 [id=" + id + ", name=" + name + ", ngaySinh=" + ngaySinh + ", diem=" + diem + "]";
	}
	
	@Override
	public int compareTo(Student1 o) {
		return this.name.compareTo(o.name);
	}
}
