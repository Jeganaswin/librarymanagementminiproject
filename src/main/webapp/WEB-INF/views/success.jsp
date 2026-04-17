<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Success</title>
    <style>
        body {
            font-family: Arial;
            text-align: center;
            margin-top: 100px;
        }

        .box {
            display: inline-block;
            padding: 30px;
            border: 1px solid #ccc;
            border-radius: 10px;
            box-shadow: 0px 0px 10px #ddd;
        }

        a {
            display: block;
            margin: 15px;
            padding: 10px 20px;
            text-decoration: none;
            background-color: green;
            color: white;
            border-radius: 5px;
        }

        a:hover {
            background-color: darkgreen;
        }

        .home {
            background-color: blue;
        }

        .home:hover {
            background-color: darkblue;
        }
    </style>
</head>
<body>

<div class="box">

    <h2>✅ Book Added Successfully!</h2>

    <!-- Add another book -->
    <a href="addBook">➕ Add More Books</a>

    <!-- Go to index page -->
    <a href="home" class="home">🏠 Return to Home</a>

</div>

</body>
</html>