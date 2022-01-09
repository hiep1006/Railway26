package testing_system_10;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Program {

	static String dbName = "testing_exam_1";
	static String dbUrl = "jdbc:mysql://localhost:3306/" + dbName;
	static String user = "root";
 	static String password = "123456";
	static Connection myConnection;

	public static void main(String[] args) throws SQLException {
		Program p = new Program();
		
		// init the connection
		myConnection = DriverManager.getConnection(dbUrl, user, password);
		if(myConnection.isValid(1))
		{
			System.out.println("Connect success!");
		}
			
		p.Show();
			
		myConnection.close();
		// q2
	
	}

	public void Show() throws SQLException
	{
		Statement statement = myConnection.createStatement();
		ResultSet resultSet = statement.executeQuery("SELECT * FROM testing_system_assignment_1.department;");
		while (resultSet.next()) {
			System.out.print(resultSet.getString(1) + "\t");
			System.out.println(resultSet.getString(2));
		}
		myConnection.close();
	}
}
