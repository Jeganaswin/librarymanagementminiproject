<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<html>
<head>
    <title>Rent Successful</title>

    <style>
        body {
            font-family: Arial;
            text-align: center;
            margin-top: 100px;
        }

        .container {
            display: inline-block;
            padding: 30px;
            border: 1px solid #ccc;
            border-radius: 10px;
            box-shadow: 0px 0px 10px #ccc;
        }

        .success {
            color: green;
            font-size: 20px;
            margin-bottom: 20px;
        }

        a {
            display: inline-block;
            margin: 10px;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            color: white;
        }

        .rent-btn {
            background-color: #007BFF;
        }

        .home-btn {
            background-color: #6c757d;
        }
    </style>
</head>

<body>

<div class="container">

    <div class="success">
        ✅ Rent Completed Successfully!
    </div>

    <!-- Rent More Books -->
    <a class="rent-btn"
       href="${pageContext.request.contextPath}/rent/verify?userId=${userId}">
        Rent More Books
    </a>

    <!-- Go to Home -->
    <a class="home-btn"
       href="${pageContext.request.contextPath}/home">
        Go to Home
    </a>

</div>

</body>
</html>