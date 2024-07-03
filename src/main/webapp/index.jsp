<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Management System</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to right, #6a11cb, #2575fc);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .options-container {
            background: #fff;
            padding: 20px 40px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            max-width: 400px;
            width: 100%;
            animation: fadeIn 1.5s ease-in-out;
        }
        .options-container h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }
        .options-container ul {
            list-style-type: none;
            padding: 0;
        }
        .options-container li {
            margin-bottom: 10px;
        }
        .options-container a {
            display: block;
            padding: 10px;
            background: #6a11cb;
            text-align: center;
            text-decoration: none;
            color: #fff;
            border-radius: 5px;
            transition: background 0.3s ease;
        }
        .options-container a:hover {
            background: #2575fc;
        }
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }
    </style>
</head>
<body>
    <div class="options-container">
        <h2>Student Management System</h2>
        <ul>
            <li><a href="register.html">Register Student</a></li>
            <li><a href="ListUsersServlet">List Registered Student</a></li>
            <li><a href="SearchUser.jsp">Search Student</a></li>
            <li><a href="EditUserServlet">Update Student</a></li>
            <li><a href="DeleteUserServlet">Delete Student</a></li>
        </ul>
    </div>
</body>
</html>
