package net.codejava;
//view
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;

public class Postgre_LAB12 
{
	static final String QUERY = "SELECT * FROM airline_management_company1.traveller";
	public static void main(String[] args) 
	{
		String jdbcURL = "jdbc:postgresql://localhost:5432/postgres";
		String username = "postgres";
		String password = "Aditya@123";
		ResultSet rs=null;
		Statement smt=null;
		try
		{
			Connection connection = DriverManager.getConnection(jdbcURL,username,password);
			System.out.println("Connected to postgresql successfully");
			
			System.out.println("Data :");
			smt=connection.createStatement();
			smt.executeQuery(QUERY);
			
			String query="select * from airline_management_company1.traveller";
			smt=connection.createStatement();
			rs=smt.executeQuery(query);
			
			while(rs.next())
			{
				System.out.println(rs.getString(2));
				System.out.println(rs.getString(3));
 
			}
			
			
			connection.close();
		}
		catch (SQLException e)
		{
			System.out.println("Error in connecting to PostreSQL server");
			e.printStackTrace();
		}
	}
}