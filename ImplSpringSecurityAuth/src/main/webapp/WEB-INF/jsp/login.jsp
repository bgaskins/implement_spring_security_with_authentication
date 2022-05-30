<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
    <body>
        <div th:if="${param.error}">
            Ooops! Your username or password is invalid. Try again.
        </div>
        <div th:if="${param.logout}">
            You have successfully logged out.
        </div>
        <form th:action="@{/login}" method="post">
            <div><label> Username : <input type="text" name="username"/> </label></div>
            <div><label> Password: <input type="password" name="password"/> </label></div>
            <div><input type="submit" value="Sign In"/></div>
        </form>
        
        <a href="/">Return to Main Page</a>
    </body>
</html>