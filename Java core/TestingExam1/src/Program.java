import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

import com.mysql.cj.jdbc.CallableStatement;

public class Program {

	static String dbName = "testingexam1";
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
			
		
		
		
//		System.out.print("Nhap id cua user muon hien thi: ");
		Scanner sc = new Scanner(System.in);
//		p.Show(sc.nextInt());
//		p.DelUser(sc.nextInt());
		if(p.checkPermissionsAdmin("nguyenvana@gmail.com", "password"))
		{
			System.out.print("Nhap Fullname: ");
			String FullName = sc.nextLine();
			System.out.print("Nhap email: ");
			String Email = sc.nextLine();
			String Password = "123456";
			try {
				String updateQuery = "Insert into User(FullName , Email, Password) values (?,?,?);";
				PreparedStatement preparedStatement = myConnection.prepareStatement(updateQuery);
				preparedStatement.setString(1, FullName);
				preparedStatement.setString(2, Email);
				preparedStatement.setString(3, Password);
				preparedStatement.executeUpdate();
				
				updateQuery = "Insert into Employee(ProSkill) values (?);";
				preparedStatement = myConnection.prepareStatement(updateQuery);
				preparedStatement.setString(1, "Phong cho");
				preparedStatement.executeUpdate();
			} catch (Exception e) {
				System.err.println(e.getMessage());
			}
			System.out.println("Them thanh cong!");
			
		}
		
		myConnection.close();
		// q2
	
	}

	public void Show() throws SQLException
	{
		Statement statement = myConnection.createStatement();
		ResultSet resultSet = statement.executeQuery("SELECT id, FullName, Email FROM User;");
		while (resultSet.next()) {
			System.out.print(resultSet.getString(1) + "\t");
			System.out.println(resultSet.getString(2));
		}
		
	}
	
	public void Show(int id) throws SQLException
	{
		Statement statement = myConnection.createStatement();
		ResultSet resultSet = statement.executeQuery("SELECT * FROM `User` LEFT JOIN  `Admin` ON `Admin`.UserId = `User`.id LEFT JOIN Employee ON Employee.UserId =  `User`.id WHERE id = "+ id + ";");
		System.out.print("id\t");
		System.out.print("Fullname\t");
		System.out.print("Email\t\t\t");
		System.out.print("Password\t");
		System.out.print("Userid\t");
		System.out.print("Exp\t");
		System.out.print("UserId\t");
		System.out.println("Ki nang");
		while (resultSet.next()) {
			System.out.print(resultSet.getString(1) + "\t");
			System.out.print(resultSet.getString(2)+ "\t");
			System.out.print(resultSet.getString(3)+ "\t");
			System.out.print(resultSet.getString(4)+ "\t");
			System.out.print(resultSet.getString(5)+ "\t");
			System.out.print(resultSet.getString(6)+ "\t");
			System.out.print(resultSet.getString(7)+ "\t");
			System.out.println(resultSet.getString(8));
		}
		
	}
	void DelUser(int id) throws SQLException
	{
		try {
			String updateQuery = "Delete From `User` Where id = "+id+"";
			PreparedStatement preparedStatement = myConnection.prepareStatement(updateQuery);
			preparedStatement.executeUpdate();
		} catch (Exception e) {
			try {
				String updateQuery = "Delete From `Admin` Where UserId = "+id+"";
				PreparedStatement preparedStatement = myConnection.prepareStatement(updateQuery);
				preparedStatement.executeUpdate();
			} catch (Exception e2) {
				
			}
			finally
			{
				try {
					String updateQuery = "Delete From Employee Where UserId = "+id+"";
					PreparedStatement preparedStatement = myConnection.prepareStatement(updateQuery);
					preparedStatement.executeUpdate();
				} catch (Exception e3) {
					String updateQuery = "Delete From `Admin` Where UserId = "+id+"";
					PreparedStatement preparedStatement = myConnection.prepareStatement(updateQuery);
					preparedStatement.executeUpdate();
				}			
			}
		}
		
		System.out.println("xoa thanh cong");
	}
	int idAdmin;
	int CheckLogin(String Email, String Password) throws SQLException
	{
		
		Statement statement = myConnection.createStatement();
		ResultSet resultSet = statement.executeQuery("SELECT Email,Password,id FROM User;");
		while (resultSet.next()) {
			if(resultSet.getString(1).equals(Email))
			{
				if(resultSet.getString(2).equals(Password))
				{
					idAdmin = resultSet.getInt(3);
					return 1;
				}
				else
					return 2;
			}
			else
			{
				return 0;
			}
			
		}
		return 0;
	}
	boolean StatusLogin(String Email, String Password) throws SQLException
	{
		if(CheckLogin(Email,Password) == 1)
		{
		
			return true;
		}
		else if(CheckLogin(Email,Password) == 2)
		{
			System.out.println("Sai mat khau");
			return false;
		}
		else
		{
			System.out.println("Sai email");
			return false;
		}
		
	}
	
	boolean checkPermissionsAdmin(String Email, String Password) throws SQLException
	{
		if(StatusLogin(Email, Password))
		{
			Statement statement = myConnection.createStatement();
			ResultSet resultSet = statement.executeQuery("SELECT UserId FROM `Admin`;");
			while(resultSet.next())
			{
				if(resultSet.getInt(1) == idAdmin)
				{
					return true;
				}
			}
		}
		return false;
	}

}
