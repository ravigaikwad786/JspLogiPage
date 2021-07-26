<%@page import="com.JSPCrud.StudentDao,java.util.*,com.JSPCrud.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>User List</h1>
	<%
		List<Student> list =StudentDao.getAllRecord();
		request.setAttribute("list",list);
		
	%>
	<table border="1" width="90">
		<tr>
		<th>ID</th><th>Name</th><th>LastName</th><th>Email</th><th>Password</th><th>Gender</th><th>Hobby</th>
		</tr>
		<c:forEach items="${list}" var="u">
		<tr>
		<td>${u.getId()}</td><td>${u.getName()}</td><td>${u.getLastname()}</td><td>${u.getEmail()}</td>
		<td>${u.getPassword()}</td><td>${u.getGender()}</td><td>${u.getHobby() }</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>