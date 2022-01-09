package testing_system_9;

public class CPU {
	private float price;
	
	public CPU() {
		super();
		this.price = 0;
	}
	
	public float getPrice() {
		return price;
	}

	public class Processor
	{
		private float coreAmount;
		private String menufacturer;
		
		public Processor(float coreAmount, String menufacturer) {
			super();
			this.coreAmount = coreAmount;
			this.menufacturer = menufacturer;
			price += coreAmount;
		}

		public float GetCache()
		{
			return 4.3f;
		}
	}
	public class Ram
	{
		private int memory;
		private String menufacturer;
		
		public Ram(int memory, String menufacturer) {
			super();
			this.memory = memory;
			this.menufacturer = menufacturer;
		}

		public float getClockSpeed()
		{
			return 5.5f;
		}
	}
	
}
