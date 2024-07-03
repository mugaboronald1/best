<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>List of Users</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to right, #ff7e5f, #feb47b);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .list-container {
            background: #fff;
            padding: 30px 50px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            max-width: 800px;
            width: 100%;
            animation: slideIn 1s ease-out;
        }
        .list-container h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }
        .list-container table {
            width: 100%;
            border-collapse: collapse;
        }
        .list-container table, th, td {
            border: 1px solid #ddd;
        }
        .list-container th, td {
            padding: 15px;
            text-align: left;
        }
        .list-container th {
            background: #f2f2f2;
        }
        .list-container tr:hover {
            background: #f1f1f1;
        }
        .action-links {
            display: flex;
            justify-content: center;
        }
        .action-links a {
            padding: 8px 16px;
            background-color: #6a11cb;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            margin-right: 10px;
            transition: background-color 0.3s ease;
        }
        .action-links a:hover {
            background-color: #2575fc;
        }
        @keyframes slideIn {
            from {
                transform: translateY(-100%);
                opacity: 0;
            }
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }
    </style>
</head>
<body>
    <div class="list-container">
        <h2>List of Users</h2>
        <table>
            <thead>
                <tr>
                    <th>User ID</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="user" items="${users}">
                    <tr>
                        <td>${user.userId}</td>
                        <td>${user.firstName}</td>
                        <td>${user.lastName}</td>
                        <td class="action-links">
                            <a href="EditUserServlet?user_id=${user.userId}">Edit</a>
                            <a href="DeleteUserServlet?user_id=${user.userId}">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
