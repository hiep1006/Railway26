import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

import com.mysql.cj.jdbc.CallableStatement;

public class Program {
	static String dbName = "testing_system_assignment_1";
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
			
		
		p.DeleteDepartment();
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
		
	}
	public void DeleteDepartment() throws SQLException
	{
		Scanner sc = new Scanner(System.in);
		System.out.print("Nhap vao id cua mot department: ");
		int id = sc.nextInt();
		try {
			CallableStatement callableStatement = (CallableStatement) myConnection.prepareCall("{CALL DeleteDepartment(?)}");
			callableStatement.setInt(1, id);
			callableStatement.executeUpdate();
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		System.out.println("done");
	}

}

