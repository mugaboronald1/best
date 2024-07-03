<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Success</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f0f0f0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            text-align: center;
        }
        .btn {
            padding: 10px 20px;
            background-color: #6a11cb;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            margin: 10px;
            text-decoration: none;
            display: inline-block;
        }
        .btn:hover {
            background-color: #2575fc;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Registration Success</h1>
        <p><%= request.getAttribute("message") %></p>
        <h3>Total Registered Users: <%= request.getAttribute("totalUsers") %></h3>
        <a href="index.jsp" class="btn">Go to Home</a>
    </div>
</body>
</html>
