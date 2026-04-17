<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Book Already Exists</title>
    <style>
        body {
            font-family: Arial;
            background-color: #f8f8f8;
            text-align: center;
            margin-top: 100px;
        }

        .box {
            background: white;
            padding: 30px;
            width: 400px;
            margin: auto;
            border-radius: 10px;
            box-shadow: 0px 0px 10px #ccc;
        }

        h2 {
            color: red;
        }

        .btn {
            display: inline-block;
            padding: 10px 15px;
            margin: 10px;
            text-decoration: none;
            color: white;
            border-radius: 5px;
        }

        .home {
            background-color: #007bff;
        }

        .add {
            background-color: #28a745;
        }
    </style>
</head>

<body>

<div class="box">
    <h2>Book Already Exists!</h2>
    <p>This book is already available in the system.</p>

    <a href="home" class="btn home">Go to Home</a>
    <a href="addBook" class="btn add">Add More Books</a>
</div>

</body>
</html>