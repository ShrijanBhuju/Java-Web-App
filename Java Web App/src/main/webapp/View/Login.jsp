<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/View/CSS/login.css">
    <link rel="stylesheet"
  href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
</head>
</head>
<body>
    <section class="login-form">
    <div class="login-container">
        <form action="../login" method="POST">
            <div class="login-content">
                <h2 class="login-heading">Welcome Back!</h2>
                <p>Email Address:</p>
                <input type="text" placeholder="Email Address" class="login-input" name="email">
                <p>Password:</p>
                <input type="password" placeholder="Password" class="login-input" name="password">
                <button class="login-button" type="submit">Login</button>
                <p class="login-para"><a href="${pageContext.request.contextPath}/View/Register.jsp">Sign Up</a></p>
            </div>
        </form>
    </div>
</section>

</body>
</html>