package net.codejava;
//insert
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class Postgre_LAB12
{
	public static void main(String[] args) 
	{
		String jdbcURL = "jdbc:postgresql://localhost:5432/postgres";
		String username = "postgres";
		String password = "Aditya@123";
		try 
		{
			Connection connection = DriverManager.getConnection(jdbcURL,username,password);
			System.out.println("Connected to postgresql successfully");
			System.out.println("data will be inserted now");
			String i = "insert into airline_management_company1.users values ('adiadi@gmail.com', 'aman', '9326205483')";
			System.out.println("data inserted");
			Statement statement =connection.createStatement();
			statement.executeUpdate(i);
			connection.close();
		}
		catch (SQLException e)
		{
			System.out.println("Error in connecting to PostreSQL server");
			e.printStackTrace();
		}
	}
}