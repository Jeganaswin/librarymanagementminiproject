<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Book List</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f8;
            text-align: center;
            margin: 0;
            padding: 0;
        }

        h2 {
            margin-top: 30px;
            color: #333;
        }

        .container {
            width: 80%;
            margin: 30px auto;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        }

        table {
            width: 100%;
            border-collapse: collapse;
            overflow: hidden;
            border-radius: 10px;
        }

        th {
            background-color: #007BFF;
            color: white;
            padding: 14px;
            text-transform: uppercase;
            font-size: 14px;
        }

        td {
            padding: 12px;
            border-bottom: 1px solid #eee;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #eef5ff;
            transition: 0.3s;
        }

        .btn {
            display: inline-block;
            padding: 10px 18px;
            margin: 15px;
            text-decoration: none;
            background-color: #007bff;
            color: white;
            border-radius: 5px;
        }

        .btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>

<body>

<h2>📚 Book Details</h2>

<a href="${pageContext.request.contextPath}/home" class="btn">🏠 Home</a>

<div class="container">

<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Author</th>
        <th>Count</th>
    </tr>

    <c:forEach var="book" items="${books}">
        <tr>
            <td>${book.bkid}</td>
            <td>${book.bkname}</td>
            <td>${book.bkauthor}</td>
            <td>${book.count}</td>
        </tr>
    </c:forEach>

</table>

</div>

</body>
</html>