<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <style>
      body {
        font-family: cursive;
        background-color: rgb(127, 196, 174);
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
      }
    </style>
  </head>
  <body>
    <h1>Logout Successfull!!</h1>
    
    <%
   HttpSession session2 =request.getSession(false);
    if(session2!=null)
    {
    	session2.invalidate();
    }
	 response.sendRedirect("login.jsp");
 %>
  </body>
</html>