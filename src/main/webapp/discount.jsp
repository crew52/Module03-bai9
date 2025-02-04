<%--
  Created by IntelliJ IDEA.
  User: dungn
  Date: 2/4/2025
  Time: 1:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Discount Calculator</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f9;
      padding: 20px;
    }
    .container {
      max-width: 400px;
      margin: 50px auto;
      background: white;
      padding: 20px;
      border-radius: 10px;
      box-shadow: 0 2px 10px rgba(0,0,0,0.1);
    }
    h2 {
      text-align: center;
    }
    label {
      display: block;
      margin: 10px 0 5px;
    }
    input[type="text"], input[type="number"] {
      width: 100%;
      padding: 8px;
      margin-bottom: 10px;
      border: 1px solid #ccc;
      border-radius: 5px;
    }
    button {
      width: 100%;
      padding: 10px;
      background-color: #007BFF;
      color: white;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }
    button:hover {
      background-color: #0056b3;
    }
  </style>
</head>
<body>
<div class="container">
  <form action="${pageContext.request.contextPath}/discount" method="post">
  <h2>Discount Calculator</h2>
  <label for="description">Product Description:</label>
  <input type="text" id="description" name="description" required>

  <label for="listPrice">List Price:</label>
  <input type="number" id="listPrice" name="listPrice" required>

  <label for="discountPercent">Discount Percent:</label>
  <input type="number" id="discountPercent" name="discountPercent" required>

  <button>Calculate Discount</button>
  </form>
</div>
</body>
</html>

