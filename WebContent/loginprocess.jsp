<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.JSPCrud.StudentDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="obj" class="com.JSPCrud.Student" />
<jsp:setProperty property="*" name="obj"/>
<%
		boolean status=StudentDao.validate(obj);
		if(status){
			out.print("Login Succes");
		}
		else{
		
			out.print("Not Login");
		
		
		}
%><a href="index.jsp">Home</a>
</body>
</html>