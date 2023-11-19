<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - ThreadTrove</title>
</head>
<body>

<div class="login-container">
    <form class="login" action="/signin" method="post">
        <h1>Login</h1>

        <label for="email">Email:</label>
        <input type="text" id="email" name="email" required>


        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>

        <span style="color: red;"><c:if test="${not empty error}">${error}</c:if></span>


        <button type="submit">Login</button>
    </form>

    <p class="create-account-link">Don't have an account? <a href="/signup">Create one</a></p>
</div>
<style>
* {
margin: 0;
padding: 0;
font-family: sans-serif;
}

body {
height: 100vh;
display: flex;
align-items: center;
justify-content: center;
background-color: #f3f4f6;
}

.login-container {
background-color: #fff;
padding: 20px;
border-radius: 10px;
box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
}

.login-form {
display: flex;
flex-direction: column;
align-items: center;
}

h1 {
font-size: 24px;
margin-bottom: 20px;
color: #424144;
}

label {
margin: 10px 0;
color: #424144;
}

input {
width: 100%;
padding: 10px;
margin-bottom: 20px;
box-sizing: border-box;
}

button {
padding: 10px 20px;
background-color: #f63e4e;
color: #fff;
border: none;
border-radius: 5px;
font-size: 16px;
cursor: pointer;
}

button:hover {
background-color: #dc3545;
}

.create-account-link {
margin-top: 20px;
text-align: center;
color: #424144;
}

.create-account-link a {
color: #f63e4e;
text-decoration: none;
font-weight: bold;
}

.create-account-link a:hover {
text-decoration: underline;
}
</style>
</body>
</html>
