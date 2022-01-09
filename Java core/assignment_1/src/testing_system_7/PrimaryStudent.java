package testing_system_7;

public final class PrimaryStudent extends student {
	static int count = 0;
	public PrimaryStudent(int id, String name) {
		super(id, name);
		this.count++;
	}
	
	
}
