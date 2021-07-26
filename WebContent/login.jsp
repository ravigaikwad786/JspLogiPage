<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>
<form method="get" action="loginprocess.jsp">
<div class="form-group">
	<label>email Id:</label><input class="form-control" type="text" name="email" id="email">
</div>
<div class="form-group">
<label>Password:</label>
<input type="text" class="form-control" type="password" name="password">
</div>
<button type="submit">Login</button>
</form>
</body>
</html>