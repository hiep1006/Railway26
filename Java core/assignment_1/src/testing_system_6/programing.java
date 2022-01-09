package testing_system_6;

public class programing {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		try {
			float result = divide(7, 0);
		} catch (Exception e) {
			System.err.println("cannot divide 0");
		}finally
		{
			System.out.println("divide completed!");
		}
		
	}

	private static float divide(int a, int b) {
		// TODO Auto-generated method stub
		return a/b;
	}

}
