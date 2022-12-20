<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="password">
<input type="text" name="userName" placeholder="Enter User Name" maxlength="20">
<input type="text" name="password" placeholder="Enter Password" maxlength="8">
<input type="submit" value="Save">
</form>
${msg}
</body>
</html>