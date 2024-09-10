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