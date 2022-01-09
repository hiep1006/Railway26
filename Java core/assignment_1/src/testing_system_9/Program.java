package testing_system_9;

public class Program {
	public static void main(String[] args) {
		CPU cpu = new CPU();
		CPU.Processor processor = cpu.new Processor(100 , "Intel");
		CPU.Ram ram = cpu.new Ram(16 , "Kington");
		System.out.println(processor.GetCache());
		System.out.println(ram.getClockSpeed());
	}
}
