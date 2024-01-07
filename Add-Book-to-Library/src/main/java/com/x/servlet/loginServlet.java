package com.x.servlet;

import java.io.IOException;

import com.x.dao.UserDao;
import com.x.dao.UserDaoImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class loginServlet
 */
public class loginServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	private static UserDao userDao =new UserDaoImpl();
	public loginServlet() 
	{
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		System.out.println("Servlet is running");
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		if(userDao.isValidUser(username, password))
		{
			HttpSession session = request.getSession();
			session.setAttribute("username", username);
			response.sendRedirect("welcome.jsp");
		}
		else
		{
			response.sendRedirect("login.jsp?error=1");
			System.out.println("Error");
		}
	}

}
