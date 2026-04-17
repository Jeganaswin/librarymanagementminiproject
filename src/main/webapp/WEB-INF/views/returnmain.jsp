<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Return Book</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f8;
            text-align: center;
            margin: 0;
        }

        h2 {
            margin-top: 30px;
            color: #333;
        }

        .container {
            width: 90%;
            margin: 30px auto;
            background: white;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        }

        .user-box {
            text-align: left;
            margin-bottom: 20px;
            padding: 15px;
            background: #eef5ff;
            border-radius: 8px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th {
            background-color: #007BFF;
            color: white;
            padding: 12px;
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
        }

        .status-ok {
            color: green;
            font-weight: bold;
        }

        .status-late {
            color: red;
            font-weight: bold;
        }

        .status-returned {
            color: gray;
            font-weight: bold;
        }

        .btn {
            padding: 8px 14px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .btn:hover {
            background-color: #218838;
        }

        .btn-disabled {
            background-color: #ccc;
            cursor: not-allowed;
        }

        .home-btn {
            margin-top: 20px;
            display: inline-block;
            padding: 10px 18px;
            background-color: #6c757d;
            color: white;
            border-radius: 5px;
            text-decoration: none;
        }

        .home-btn:hover {
            background-color: #5a6268;
        }
    </style>

</head>

<body>

<h2>📚 Return Book</h2>

<div class="container">

    <!-- USER DETAILS -->
    <div class="user-box">
        <p><b>Name:</b> ${user.username}</p>
        <p><b>Contact:</b> ${user.contacts}</p>
    </div>

    <!-- RENT TABLE -->
    <table>
        <tr>
            <th>Book</th>
            <th>Quantity</th>
            <th>Rent Date</th>
            <th>Return Date</th>
            <th>Status</th>
            <th>Fine</th>
            <th>Action</th>
        </tr>

        <c:forEach var="r" items="${rents}">
            <tr>

                <td>${r.book.bkname}</td>
                <td>${r.quantity}</td>
                <td>${r.rentDate}</td>
                <td>${r.returnDate}</td>

                <!-- STATUS (Returned / Overdue / On Time) -->
                <td>
                    <c:choose>
                        <c:when test="${r.status == 'RETURNED'}">
                            <span class="status-returned">Returned</span>
                        </c:when>
                        <c:when test="${r.returnDate lt today}">
                            <span class="status-late">Overdue</span>
                        </c:when>
                        <c:otherwise>
                            <span class="status-ok">On Time</span>
                        </c:otherwise>
                    </c:choose>
                </td>

                <!-- FINE -->
                <td>${r.fineamount}</td>

                <!-- ACTION -->
                <td>
                    <c:choose>
                        <c:when test="${r.status == 'RETURNED'}">
                            <button class="btn btn-disabled" disabled>Returned</button>
                        </c:when>
                        <c:otherwise>
                            <form action="${pageContext.request.contextPath}/rent/returnBook" method="post">
                                <input type="hidden" name="rentId" value="${r.rentId}" />
                                <button type="submit" class="btn">Return</button>
                            </form>
                        </c:otherwise>
                    </c:choose>
                </td>

            </tr>
        </c:forEach>

    </table>

</div>

<a href="${pageContext.request.contextPath}/home" class="home-btn">🏠 Home</a>

</body>
</html>