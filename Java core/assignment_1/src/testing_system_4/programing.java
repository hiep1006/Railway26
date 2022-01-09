package testing_system_4;

import java.time.LocalDate;

import assignment_1.Account;
import assignment_1.Position;
import assignment_1.department;

public class programing {

	public static void main(String[] args) {
		programing p = new programing();
		p.Constructor();
		//p.Abstraction();
		
	}
	
	void Constructor()
	{
		// 1
		department d = new department();
		department c = new department("test");
		 // 2
		Account a = new Account();
		Account a1 = new Account(1,"email1@gmail.com", "hiep1006","Hiep","Nguyen");
		Position p = new Position();
		p.positionId = 1;
		p.positionName = "posName";
		LocalDate d1 = LocalDate.of(2021, 06, 10);
		Account a2 = new Account(2,"email2@gmail.com", "username1","Firstname1","Lastname1", p);
		Account a3 = new Account(3,"email3@gmail.com", "username2","Firstname2","Lastname2", p, d1);
		// 3
		
	}
	void Package()
	{
		
	}
	void Abstraction()
	{
		VietnamesePhone Vp = new VietnamesePhone();
		Vp.insertContact("Hiep", "0378316108");
		Vp.Show();
	}
}
