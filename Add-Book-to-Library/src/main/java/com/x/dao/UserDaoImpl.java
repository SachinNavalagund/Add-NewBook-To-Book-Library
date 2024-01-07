package com.x.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.x.util.DBUtil;

public class UserDaoImpl implements UserDao {


	@Override
	public boolean isValidUser(String username, String password) 
	{
		String query = "select * from register where username = ? and password =?";
		try(Connection connection = DBUtil.getConnection();				
				PreparedStatement preparedStatement = connection.prepareStatement(query))
		{
			preparedStatement.setString(1, username);
			preparedStatement.setString(2, password);

			ResultSet resultSet = preparedStatement.executeQuery();

			System.out.println("Query is running");
			return resultSet.next();


		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}

		return false;
	}

	@Override
	public boolean addUser(User user) 
	{
		String query = "insert into register(username, email, password) values(?,?,?)";
		try(Connection connection = DBUtil.getConnection();				
				PreparedStatement preparedStatement = connection.prepareStatement(query))
		{
			System.out.println("Prepared statement created");
			preparedStatement.setString(1, user.getUsername());
			preparedStatement.setString(2, user.getEmail());
			preparedStatement.setString(3, user.getPassword());
			System.out.println("Values got set");

			int rowCount = preparedStatement.executeUpdate();
			System.out.println("Row has been Inserted");

			return rowCount>0;
		}
		catch(SQLException e)
		{
			e.printStackTrace();
			return false;
		}

	}

}
