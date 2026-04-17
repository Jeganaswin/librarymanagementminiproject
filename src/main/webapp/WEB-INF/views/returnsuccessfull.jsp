<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Return Successful</title>

    <style>
        body {
            font-family: 'Segoe UI', Arial, sans-serif;
            background: linear-gradient(135deg, #e3f2fd, #f1f8ff);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background: #ffffff;
            padding: 40px 35px;
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.1);
            width: 380px;
            text-align: center;
            animation: fadeIn 0.6s ease-in-out;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .icon {
            font-size: 55px;
            color: #28a745;
            margin-bottom: 10px;
        }

        .message {
            font-size: 24px;
            font-weight: 600;
            color: #333;
            margin-bottom: 10px;
        }

        .sub-text {
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

        .return-btn {
            background: #28a745;
            color: white;
        }

        .return-btn:hover {
            background: #218838;
            transform: translateY(-2px);
            box-shadow: 0 4px 10px rgba(0,0,0,0.15);
        }

        .home-btn {
            background: #007BFF;
            color: white;
        }

        .home-btn:hover {
            background: #0056b3;
            transform: translateY(-2px);
            box-shadow: 0 4px 10px rgba(0,0,0,0.15);
        }
    </style>

</head>

<body>

<div class="container">

    <div class="icon">✔️</div>

    <div class="message">
        Return Successful
    </div>

    <div class="sub-text">
        Your book has been successfully returned.<br>
        You can continue managing your rentals below.
    </div>

    <!-- Return More -->
    <a href="${pageContext.request.contextPath}/rent/returnbook?userId=${userId}" 
       class="btn return-btn">
        📚 Return More Books
    </a>

    <!-- Home -->
    <a href="${pageContext.request.contextPath}/home" 
       class="btn home-btn">
        🏠 Go to Home
    </a>

</div>

</body>
</html>