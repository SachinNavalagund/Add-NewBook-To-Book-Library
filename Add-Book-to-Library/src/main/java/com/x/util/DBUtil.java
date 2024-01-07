package com.x.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil 
{
	private static final String url ="jdbc:mysql://localhost:3306/portal";
	private static final String username ="root";
	private static final String password ="root123";

	static
	{
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
		}
		catch(ClassNotFoundException e)
		{
			e.printStackTrace();
		}
	}
	public static Connection getConnection() throws SQLException
	{
		System.out.println("Connection Established");
		return DriverManager.getConnection(url, username, password);
	}
}
