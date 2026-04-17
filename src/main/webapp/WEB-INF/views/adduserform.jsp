<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>Add User</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin-top: 80px;
        }
        .container {
            border: 1px solid #ccc;
            padding: 30px;
            display: inline-block;
            border-radius: 10px;
            box-shadow: 0px 0px 10px #ccc;
        }
        input {
            margin: 10px;
            padding: 8px;
            width: 200px;
        }
        button, a {
            margin-top: 15px;
            padding: 10px 20px;
            display: inline-block;
            text-decoration: none;
            border-radius: 5px;
            color: white;
        }
        .save-btn {
            background-color: #28a745;
            border: none;
        }
        .save-btn:hover {
            background-color: #218838;
        }
        .add-btn {
            background-color: #007BFF;
        }
        .add-btn:hover {
            background-color: #0056b3;
        }
        .home-btn {
            background-color: #6c757d;
        }
        .home-btn:hover {
            background-color: #5a6268;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>➕ Add User</h2>

    <form action="save" method="post">
        
        <!-- Username -->
        <div>
            <input type="text" name="username" placeholder="Enter Username" required />
        </div>

        <!-- Age -->
        <div>
            <input type="number" name="age" placeholder="Enter Age" required />
        </div>

        <!-- Contacts -->
        <div>
            <input type="text" name="contacts" placeholder="Enter Contact" required />
        </div>

        <!-- Save -->
        <div>
            <button type="submit" class="save-btn">Save User</button>
        </div>

    </form>

    <!-- Add Another User -->
    

    <!-- Go to Home -->
    <div>
        <a href="${pageContext.request.contextPath}/home" class="home-btn">🏠 Home</a>
    </div>

</div>

</body>
</html>