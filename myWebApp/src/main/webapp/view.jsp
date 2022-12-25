<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<title>Insert title here</title>
</head>
<body>
<table>

<tr>
<th>ID</th>
<th>NAME</th>
<th>UPDATE</th>
<th>DELETE</th>
</tr>
 <c:forEach items="${list}" var="l">  
 <tr>
 
 <td>${l.id}</td>
 <td>${l.name}</td>
 <td><a href="edit?id=${l.id}">Update</a></td>
 <td><a href="delete?id=${l.id}">Delete</a></td>
 </tr>
 
 </c:forEach>
</table>
</body>
</html>