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
        /* text-align: center; */
        font-family:cursive;
        background-color: rgb(0, 0, 0);
        margin: 0;
        padding: 0;
        justify-content: center;
        align-items: center;
        height: 100vh;
      }
.heading{
    display: flex;
    color: aliceblue;
    justify-content: center;
    background-color: rgb(0, 0, 0);
}
      .addbook-container {
        position: absolute;
        top: 20%;
        left: 35%;
        background-color: #abeff3;
        padding: 20px;
        border-radius: 13px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 300px;
        
      }

      .addbook-container h2 {
        color: #333;
      }

      .addbook-container input {
        width: 100%;
        padding: 10px;
        margin: 8px 0;
        box-sizing: border-box;
      }

      .addbook-container button {
        width: 100%;
        padding: 10px;
        background-color: #3559e0;
        color: white;
        border: none;
        border-radius: 30px;
        cursor: pointer;
      }

      .addbook-container button:hover {
        background-color: #0f2167;
      }

      #bookname{
        border-radius: 10px;
      }

      #authorname
      {
        border-radius: 10px;
      }

      #country
      {
        border-radius: 10px;
      }
      .addbook-container h2{
        
        text-align: center;
      }


    </style>
  </head>
  <body>
    <div class="heading">
        <h1>Welcome to Book House <span>CLUB</span></h1>
      </div>
    <div class="addbook-container">
      <h2>Add Book</h2>
      <form action="AddBookServlet" method="post">
        <label for="bookname"">Book Name :</label>
        <input type="text" id="bookname" name="bookname" required placeholder="Enter Book Name" />

        <label for="authorname">Author Name :</label>
        <input type="text" id="authorname" name="authorname" required placeholder="Enter Author Name"/>

        <label for="country">Country</label>
        <input type="text" id="country" name="country" required placeholder="Enter Author Country"/>

<form action="AddBook.jsp" ><button type="submit">Add</button></form>
        
      </form>
    </div>
  </body>
</html>