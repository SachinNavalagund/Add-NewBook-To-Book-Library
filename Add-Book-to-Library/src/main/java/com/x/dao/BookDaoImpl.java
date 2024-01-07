package com.x.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.x.util.DBUtil;

public class BookDaoImpl implements BookDao
{
	public boolean addBook(Book book) 
	{
		String query = "insert into book(name, authorname, authorcountry) values(?,?,?)";
		try(Connection connection = DBUtil.getConnection();				
				PreparedStatement preparedStatement = connection.prepareStatement(query))
		{
			System.out.println("Prepared statement created");
			preparedStatement.setString(1, book.getBookName());
			preparedStatement.setString(2, book.getAuthorName());
			preparedStatement.setString(3, book.getAuthorCountry());

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
