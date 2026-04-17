<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<html>
<head>
    <title>User Not Found</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            background-color: #f4f6f8;
            margin-top: 120px;
        }

        .container {
            display: inline-block;
            padding: 30px;
            background: white;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        }

        .error {
            color: red;
            font-size: 22px;
            margin-bottom: 20px;
            font-weight: bold;
        }

        .msg {
            margin-bottom: 20px;
            color: #555;
        }

        a {
            display: inline-block;
            padding: 10px 20px;
            margin-top: 10px;
            text-decoration: none;
            background-color: #28a745;
            color: white;
            border-radius: 5px;
        }

        a:hover {
            background-color: #218838;
        }
    </style>
</head>

<body>

<div class="container">

    <div class="error">
        ❌ User Not Found
    </div>

    <div class="msg">
        The user you are searching for does not exist in the system.
    </div>

    <a href="${pageContext.request.contextPath}/users/adduser">
        ➕ Add User
    </a>

</div>

</body>
</html>