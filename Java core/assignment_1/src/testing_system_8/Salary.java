package testing_system_8;

public class Salary<T extends Number> {
	private T salary;
	public Salary(T salary)
	{
		this.salary = salary;
	}
	public void print()
	{
		System.out.println(salary);
	}
}
