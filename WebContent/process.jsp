<%@page import="java.lang.ProcessBuilder.Redirect"%>
<%@page import="com.JSPCrud.StudentDao"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	int s=StudentDao.saveData(obj);
	if(s>0){
		out.print("You have Succefully registerd");
	}
%>
<h1><a href="login.jsp">Click here to Login...</a></h1>
</body>
</html>