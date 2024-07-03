<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Confirmation</title>
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
        .confirmation-container {
            background: #fff;
            padding: 30px 50px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            max-width: 500px;
            width: 100%;
            animation: slideIn 1s ease-out;
        }
        .confirmation-container h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }
        .confirmation-container p {
            text-align: center;
            color: #666;
            margin-bottom: 20px;
        }
        .confirmation-container ul {
            list-style: none;
            padding: 0;
        }
        .confirmation-container ul li {
            background: #f9f9f9;
            padding: 10px;
            margin-bottom: 10px;
            border-radius: 5px;
            color: #333;
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
    <div class="confirmation-container">
        <h2>Registration Successful</h2>
        <p>Here are the details you registered:</p>
        <ul>
            <li>User ID: <%= request.getAttribute("user_id") %></li>
            <li>First Name: <%= request.getAttribute("first_name") %></li>
            <li>Last Name: <%= request.getAttribute("last_name") %></li>
        </ul>
    </div>
</body>
</html>
