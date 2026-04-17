<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>Book Management</title>

    <style>
        body {
            font-family: 'Segoe UI', Arial, sans-serif;
            margin: 0;
            background: linear-gradient(135deg, #e3f2fd, #f5f7fa);
        }

        .header {
            background: #007BFF;
            color: white;
            padding: 20px;
            text-align: center;
            font-size: 24px;
            font-weight: bold;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        }

        .container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
            gap: 25px;
            padding: 40px;
            max-width: 900px;
            margin: auto;
        }

        .card {
            background: white;
            padding: 25px;
            border-radius: 12px;
            text-align: center;
            text-decoration: none;
            color: #333;
            box-shadow: 0 6px 15px rgba(0,0,0,0.1);
            transition: 0.3s;
        }

        .card:hover {
            transform: translateY(-8px);
            box-shadow: 0 10px 25px rgba(0,0,0,0.2);
        }

        .icon {
            font-size: 40px;
            margin-bottom: 10px;
        }

        .title {
            font-size: 18px;
            font-weight: 600;
            margin-bottom: 5px;
        }

        .desc {
            font-size: 13px;
            color: #666;
        }

        /* Different colors */
        .add { border-top: 5px solid #28a745; }
        .list { border-top: 5px solid #17a2b8; }
        .user { border-top: 5px solid #ffc107; }
        .rent { border-top: 5px solid #6f42c1; }
        .details { border-top: 5px solid #fd7e14; }
        .return { border-top: 5px solid #dc3545; }

    </style>

</head>

<body>

<div class="header">
    📚 Book Management System
</div>

<div class="container">

    <!-- Add Book -->
    <a href="addBook" class="card add">
        <div class="icon">➕</div>
        <div class="title">Add Books</div>
        <div class="desc">Add new books to the library</div>
    </a>

    <!-- List Books -->
    <a href="listBooks" class="card list">
        <div class="icon">📖</div>
        <div class="title">View Books</div>
        <div class="desc">Check available books</div>
    </a>

    <!-- Add User -->
    <a href="users/adduser" class="card user">
        <div class="icon">👤</div>
        <div class="title">Add User</div>
        <div class="desc">Register new users</div>
    </a>

    <!-- Rent Book -->
    <a href="${pageContext.request.contextPath}/rent/rentbook" class="card rent">
        <div class="icon">📚</div>
        <div class="title">Rent Book</div>
        <div class="desc">Rent books to users</div>
    </a>

    <!-- Rent Details -->
    <a href="${pageContext.request.contextPath}/rent/details" class="card details">
        <div class="icon">📋</div>
        <div class="title">Rent Details</div>
        <div class="desc">View all rented books</div>
    </a>

    <!-- Return Book -->
    <a href="${pageContext.request.contextPath}/rent/returncheck" class="card return">
        <div class="icon">🔄</div>
        <div class="title">Return Book</div>
        <div class="desc">Manage book returns</div>
    </a>

</div>

</body>
</html>