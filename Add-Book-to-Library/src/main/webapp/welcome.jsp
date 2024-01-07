<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
    <style>
      body {
       background-color: rgb(0, 0, 0);
        font-family: cursive;
        margin: 0;
        padding: 0;
        justify-content: center;
        align-items: center;
        height: 100vh;
      }
      .heading {
      color : rgb(240, 248, 255);
        display: flex;
        justify-content: center;
        background-color: rgb(0, 0, 0);
      }
      .usernname {
      color : rgb(240, 248, 255);
        display: flex;
        justify-content: center;
      }

      .logout button {
        padding: 6px;
        border-radius: 12px;
        display: flex;
        justify-content: center;
        align-items: center;
        background-color: aquamarine;
        color: rgb(15, 124, 219);
      }
      .container {
        position: absolute;
        top: 40%;
        left: 35%;
        display: flexbox;
        text-align: center;
        justify-content: center;
        align-items: center;
        background-color: #abeff3;
        padding: 20px;
        border-radius: 13px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 300px;
      }

      .container button {
        width: 100%;
        margin: 10px;
        padding: 10px;
        background-color: #3559e0;
        color: white;
        border: none;
        border-radius: 30px;
        cursor: pointer;
      }
    </style>
</head>
<body>
<div class="heading">
      <h1>Welcome to Book House</h1>
    </div>
    <div class="usernname">
<%
   HttpSession session1 =request.getSession(false);

   if(session1 != null && session1.getAttribute("username")!= null)
   {
	   String username=(String) session1.getAttribute("username");
   
%>
 <h1>Welcome, <%=username%>!</h1>
 <%
   }
 else
 {
	 response.sendRedirect("login.jsp");
 }
 %>
 </div>
 <div class="container">
      <p>
        Welcome to Book Reader club, <br />
        Here you can Manage your Book Library<br />
      </p>
      <form action="BookLibrary.jsp">
        <button>Book Library</button>
      </form>
      <form action="logout.jsp">
        <button>Logout</button>
      </form>
    </div>
  
</body>
</html>