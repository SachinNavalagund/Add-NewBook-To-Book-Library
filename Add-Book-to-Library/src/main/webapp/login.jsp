<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login Page</title>
    <style>
      body {
        font-family: cursive;
        background-color: #101110;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
      }

      .login-container {
        background-color: #aad7d9;
        padding: 20px;
        border-radius: 13px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 300px;
      }

      .login-container h2 {
        color: #333;
      }

      .login-container input {
        width: 100%;
        padding: 10px;
        margin: 8px 0;
        box-sizing: border-box;
        border-radius: 10px;
      }

      .login-container button {
        width: 100%;
        padding: 10px;
        background-color: #3559e0;
        color: white;
        border: none;
        border-radius: 30px;
        cursor: pointer;
      }

      .login-container button:hover {
        background-color: #0f2167;
      }

      .login-container h2 {
        text-align: center;
      }
    </style>
  </head>
  <body>
    <div class="login-container">
      <h2>Login</h2>
      <form action="loginServlet" method="post">
        <label for="username">Username:</label>
        <input
          type="text"
          id="username"
          name="username"
          required
          placeholder="Enter your name"
        />

        <label for="password">Password:</label>
        <input
          type="password"
          id="password"
          name="password"
          required
          placeholder="Enter password"
        />

        <button type="submit">Login</button>
      </form>
      
      <% String error = request.getParameter("error");
          if(error!= null && error.equals("1"))
          { %> <p style="color:red">Invalid username or password. Try Again</p>
          <% } %>
          
          <% String rs = request.getParameter("registration");
          if(rs!= null && rs.equals("success"))
          { %> <p style="color:green">Regstration Success, Please Login</p>
          <% } %>
    </div>
  </body>
</html>