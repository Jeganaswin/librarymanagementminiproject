<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
    <title>User Already Exists</title>

    <style>
        body {
            font-family: 'Segoe UI', Arial, sans-serif;
            background: linear-gradient(135deg, #ffe6e6, #fff5f5);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background: white;
            padding: 35px 30px;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.1);
            width: 360px;
            text-align: center;
            animation: fadeIn 0.5s ease-in-out;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(15px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .icon {
            font-size: 50px;
            color: #dc3545;
            margin-bottom: 10px;
        }

        .title {
            font-size: 22px;
            font-weight: 600;
            color: #333;
            margin-bottom: 8px;
        }

        .subtitle {
            font-size: 14px;
            color: #666;
            margin-bottom: 25px;
        }

        .btn {
            display: block;
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border-radius: 8px;
            text-decoration: none;
            font-weight: 500;
            transition: all 0.3s ease;
        }

        .add-btn {
            background-color: #007BFF;
            color: white;
        }

        .add-btn:hover {
            background-color: #0056b3;
            transform: translateY(-2px);
            box-shadow: 0 4px 10px rgba(0,0,0,0.15);
        }

        .home-btn {
            background-color: #6c757d;
            color: white;
        }

        .home-btn:hover {
            background-color: #5a6268;
            transform: translateY(-2px);
            box-shadow: 0 4px 10px rgba(0,0,0,0.15);
        }
    </style>

</head>

<body>

<div class="container">

    <div class="icon">⚠️</div>

    <div class="title">
        User Already Exists
    </div>

    <div class="subtitle">
        The user you are trying to add is already present in the system.
    </div>

    <!-- Add User -->
    <a href="${pageContext.request.contextPath}/users/adduser" class="btn add-btn">
        ➕ Add User Again
    </a>

    <!-- Home -->
    <a href="${pageContext.request.contextPath}/home" class="btn home-btn">
        🏠 Go to Home
    </a>

</div>

</body>
</html>