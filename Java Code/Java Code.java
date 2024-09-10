package net.codejava;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class Postgre_LAB12 
{
	public static void main(String[] args) 
	{
			String jdbcURL = "jdbc:postgresql://localhost:5432/postgres";
			String username = "postgres";
			String password = "Aditya@123";
			try 
			{
				Connection connection = DriverManager.getConnection(jdbcURL, username, password);
				System.out.println("Connected to postgre SQL server");
				connection.close();
			} 
			catch(SQLException e) 
			{
				System.out.println("Error in connecting to Postgre SQL server");
				e.printStackTrace();
			}
	}

}

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
package net.codejava;                                                                                                     
//update                                                                                                                          
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
			System.out.println("Connected to postgresql successfully ");                                                                                                                                                                                                                                                                                                                                                                      
			System.out.println("data will be updated now");                                                               
			String u="update airline_management_company1.users set u_naame='aditya' where u_email_id='adiadiadi@gmail.com'";                         
			System.out.println("data updated");                                                                           
			Statement statement =connection.createStatement();                                                            
			statement.executeUpdate(u);                                                                                                                                                                                             
			connection.close();                                                                                                                                                                                                      
		}                                                                                                                 
		catch (SQLException e)                                                                                            
		{                                                                                                                 
			System.out.println("Error in connecting to PostreSQL server");                                                
			e.printStackTrace();                                                                                          
		}                                                                                                                 
	}                                                                                                                                                                                                                                    
}
package net.codejava;
//delete
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
			System.out.println("data will be deleted now");
			String d="delete from airline_management_company1.users where u_naame='jugal'";
			System.out.println("data deleted");
			Statement statement =connection.createStatement();
			statement.executeUpdate(d);
			connection.close();
		}
		catch (SQLException e)
		{
			System.out.println("Error in connecting to PostreSQL server");
			e.printStackTrace();
		}
	}
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
