<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Dashboard</title>
</head>
    <body>
        <h2 th:inline="text">Hi, [[${#httpServletRequest.remoteUser}]]! Login was successful.</h2>
        <form th:action="@{/logout}" method="post">
            <input type="submit" value="Sign Out"/>
        </form>
    </body>
</html>