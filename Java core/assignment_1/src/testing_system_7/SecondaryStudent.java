package testing_system_7;

public final class SecondaryStudent extends student {
	static int count = 0;
	public SecondaryStudent(int id, String name) {
		super(id, name);
		this.count++;
	}
	
}
