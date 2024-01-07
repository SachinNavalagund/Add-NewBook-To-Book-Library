package com.x.servlet;

import java.io.IOException;

import com.x.dao.Book;
import com.x.dao.BookDao;
import com.x.dao.BookDaoImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AddBookServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	private static BookDao bookDao =new BookDaoImpl();

	public AddBookServlet() {
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String bookName = request.getParameter("bookname");
		String authorName = request.getParameter("authorname");
		String country = request.getParameter("country");

		Book book = new Book();
		book.setBookName(bookName);
		book.setAuthorName(authorName);
		book.setAuthorCountry(country);



		if (bookDao.addBook(book)) {
			response.sendRedirect("AddBook.jsp?add=success");
		} else {
			response.sendRedirect("BookLibrary.jsp?error=1");
		}
	}
}


