<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Add Book</title>
    <style>
        body {
            font-family: Arial;
            text-align: center;
            margin-top: 80px;
        }

        .form-box {
            display: inline-block;
            padding: 25px;
            border: 1px solid #ccc;
            border-radius: 10px;
            box-shadow: 0px 0px 10px #ddd;
        }

        input {
            display: block;
            margin: 10px auto;
            padding: 8px;
            width: 250px;
        }

        button {
            padding: 10px 20px;
            background-color: green;
            color: white;
            border: none;
            cursor: pointer;
            border-radius: 5px;
        }

        button:hover {
            background-color: darkgreen;
        }
    </style>
</head>
<body>

<div class="form-box">
    <h2>Add Book</h2>

    <form action="addBook" method="post">

        <!-- Book Name -->
        <input type="text" name="Bkname" placeholder="Book Name" required>

        <!-- Author -->
        <input type="text" name="Bkauthor" placeholder="Author Name" required>

        <!-- Count -->
        <input type="number" name="count" placeholder="Count" required>

        <button type="submit">Add Book</button>
    </form>
</div>

</body>
</html>