<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up - ThreadTrove</title>
</head>
<body>
<div class="signup-container">
    <form class="signup" method="post">
        <h1>Sign Up</h1>
        <label for="firstName">First Name:</label>
        <input type="text" id="firstName" name="firstName" required>

        <label for="lastName">Last Name:</label>
        <input type="text" id="lastName" name="lastName" required>

        <label for="age">Age:</label>
        <input type="number" id="age" name="age" required>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>

        <button type="submit">Sign Up</button>
    </form>

    <p class="login-link">Already have an account? <a href="WEB-INF/jsp/signin.jsp">Login</a></p>
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

    .signup-container {
        background-color: #fff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
    }

    .signup-form {
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

    input, select {
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

    .login-link {
        margin-top: 20px;
        text-align: center;
        color: #424144;
    }

    .login-link a {
        color: #f63e4e;
        text-decoration: none;
        font-weight: bold;
    }

    .login-link a:hover {
        text-decoration: underline;
    }

</style>
</body>
</html>
