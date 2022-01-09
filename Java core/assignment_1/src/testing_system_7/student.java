package testing_system_7;

public class student {
	static int count = 0;
	private final int id;
	private String name;
	private static String college = "Dai hoc bach khoa";
	public static double moneyGroup = 0;
	public student(int id, String name)
	{
		this.id = id;
		this.count++;
		
		this.name = name;
		if(this.count >= 7)
		{
			System.out.println("so luong student khong vuot qua 7");
			return;
		}
		
		
	}
	public void SetCollege(String college)
	{
		this.college = college;
	}
	public static void SetCollege1(String college1)
	{
		college = college1;
	}
	public static String GetCollege1()
	{
		return college;
	}
	@Override
	public String toString() {
		return "student [id=" + id + ", name=" + name + ", college= " + college + " ]";
	}
	public void NopQuy(double money)
	{
		this.moneyGroup += money;
	}
	public void Mua(double money, String mua)
	{
		System.out.println(this.name + " da mua " + mua);
		this.moneyGroup -= money;
	}
	public final void study()
	{
		System.out.println("Dang hoc bai");
	}
}
