package testing_system_8;

import java.util.Arrays;

public class Employee<T extends Number> {
	private int id;
	private String name;
	private T salaries[];
	public Employee(int id, String name, T[] salaries) {
		super();
		this.id = id;
		this.name = name;
		this.salaries = salaries;
	}
	@Override
	public String toString() {
		return "Employee [id=" + id + ", name=" + name + ", salaries=" + Arrays.toString(salaries) + "]";
	}
	public T ThangLuongCuoi()
	{
		return salaries[11];
	}
}
