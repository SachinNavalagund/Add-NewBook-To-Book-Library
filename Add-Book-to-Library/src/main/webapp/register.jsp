<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Registration Page</title>
    <style>
      body {
        font-family:cursive;
        background-color: rgb(0, 0, 0);
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
      }

      .register-container {
        background-color: #abeff3;
        padding: 20px;
        border-radius: 13px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 300px;
        
      }

      .register-container h2 {
        color: #333;
      }

      .register-container input {
        width: 100%;
        padding: 10px;
        margin: 8px 0;
        box-sizing: border-box;
      }

      .register-container button {
        width: 100%;
        padding: 10px;
        background-color: #3559e0;
        color: white;
        border: none;
        border-radius: 30px;
        cursor: pointer;
      }

      .register-container button:hover {
        background-color: #0f2167;
      }

      #username{
        border-radius: 10px;
      }

      #email
      {
        border-radius: 10px;
      }

      #password
      {
        border-radius: 10px;
      }

      #confirm-password
      {
        border-radius: 10px;
      }
      .register-container h2{
        
        text-align: center;
      }


    </style>
  </head>
  <body>
    <div class="register-container">
      <h2>Register</h2>
      <form action="RegisterServlet" method="post">
        <label for="username"">Username:</label>
        <input type="text" id="username" name="username" required placeholder="Enter your name" />

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required placeholder="Enter email"/>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required placeholder="Enter password"/>


        <button type="submit">Register</button>
      </form>
    </div>
  </body>
</html>