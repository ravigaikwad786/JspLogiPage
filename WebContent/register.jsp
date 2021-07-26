<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<style type="text/css">
label{ 
font-family: sans-serif;
size: 10px;
}
</style>
</head>
<body>

<form action="process.jsp">
<div class="form-group">
	<label for="name">Name:</label>
	<input type="text" class="form-control" placeholder="Enter Name" id="name" name="name">
</div>
<div class="form-group">
	<label for="lastname">Last Name:</label>
	<input type="text" class="form-control" placeholder="Lastname" id="lastname" name="lastname">
</div>
<div class="form-group">
	<label for="email">Email:</label>
	<input type="email" class="form-control" placeholder="Email" id="email" name="email">
</div>
<div class="form-group">
	<label for="password">Password:</label>
	<input type="password" class="form-control" placeholder="password" id="password" name="password">
</div>
<div class="form-group">
<label>Gender:</label>
<div class="form-check-inline">
	<div class="form-check-label">
	<input type="radio" class="form-check-input" name="gender" value="male"> Male
	</div>
</div>
<div class="form-check-inline">
		<div class="form-check-label">
		<input type="radio" class="form-check-input" name="gender" value="female"> Female
		</div>
	</div>
</div>
<div class="form-group">
<label>Hobbies:</label>
<div class="form-check-inline">
	<label class="form-check-label">
		<input type="checkbox" class="form-check-input" value="cricket" name="hobby">Cricket:
	</label>
	<label class="form-check-label">
		<input type="checkbox" class="form-check-input" value="football" name="hobby">Football:
	</label>
	<label class="form-check-label">
		<input type="checkbox" class="form-check-input" value="Hocky" name="hobby">Hockey:
	</label>
</div>
</div>
<button type="submit" class="btn btn-primary">Register</button>


</form>
</body>
</html>