package com.project;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider {

	public static Connection getCon()
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
//			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/srms?characterEncoding=latin1","root","rahul");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/srms?characterEncoding=latin1","root","rahul");
			return con;
		}
		catch(Exception e)
		{
			System.out.println(e);
			return null;
		}
	}
	
	
}
