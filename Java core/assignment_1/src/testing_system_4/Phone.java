package testing_system_4;

import java.util.ArrayList;

public abstract class Phone {
	ArrayList<contacts> infor = new ArrayList<>();
	void insertContact(String name, String phone) {
		contacts c = new contacts(phone , name);
		infor.add(c);
		
		
	}
	void Show()
	{
		System.out.println(infor.get(0).name.toString());
		System.out.println(infor.get(0).number.toString());
	}
}
