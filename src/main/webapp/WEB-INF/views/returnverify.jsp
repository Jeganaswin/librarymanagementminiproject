<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<html>
<head>
    <title>Verify User</title>
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

        input {
            margin: 10px;
            padding: 8px;
            width: 200px;
        }

        button {
            padding: 10px 20px;
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 5px;
        }

        .error {
            color: red;
            margin-top: 10px;
        }

        .success {
            color: green;
            margin-top: 10px;
        }
    </style>
</head>

<body>

<div class="container">

    <h2>🔍 Verify User</h2>

    <!-- FORM -->
    <form action="${pageContext.request.contextPath}/rent/return" method="post">

        <!-- Username -->
        <input type="text" name="username" placeholder="Enter Name" required />
        <br>

        <!-- Age -->
        <input type="number" name="age" placeholder="Enter Age" required />
        <br>

        <!-- Contact -->
        <input type="text" name="contact" placeholder="Enter Contact" required />
        <br>

        <!-- Submit -->
        <button type="submit">Verify</button>

    </form>

    <!-- MESSAGE SECTION -->
    <!-- Show error if user not found -->
    <c:if test="${not empty error}">
        <div class="error">${error}</div>
    </c:if>

    <!-- Show success if user exists -->
    <c:if test="${not empty success}">
        <div class="success">${success}</div>
    </c:if>

</div>

<br>

<a href="${pageContext.request.contextPath}/home">🏠 Home</a>

</body>
</html>