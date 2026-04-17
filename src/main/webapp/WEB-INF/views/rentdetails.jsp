<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Rent Details</title>

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

        .table-container {
            margin: 30px auto;
            width: 90%;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        }

        table {
            width: 100%;
            border-collapse: collapse;
            border-radius: 10px;
            overflow: hidden;
        }

        th {
            background-color: #007BFF;
            color: white;
            padding: 12px;
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

        a {
            display: inline-block;
            margin: 20px;
            padding: 10px 20px;
            background-color: #6c757d;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }

        a:hover {
            background-color: #5a6268;
        }
    </style>

</head>

<body>

<h2>📋 Rent Details</h2>

<div class="table-container">

    <table>
        <tr>
            <th>Rent ID</th>
            <th>User Name</th>
            <th>Book Name</th>
            <th>Quantity</th>
            <th>Rent Date</th>
            <th>Return Date</th>
        </tr>

        <c:forEach var="r" items="${rents}">
            <tr>
                <td>${r.rentId}</td>
                <td>${r.user.username}</td>
                <td>${r.book.bkname}</td>
                <td>${r.quantity}</td>
                <td>${r.rentDate}</td>
                <td>${r.returnDate}</td>
            </tr>
        </c:forEach>

    </table>

</div>

<a href="${pageContext.request.contextPath}/home">🏠 Home</a>

</body>
</html>