<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body{
	background-color:cyan;
}
</style>
</head>
<body>
	<form action="log" method="post">
	<center>
	<h1>Login</h1><br><br>
	UserName  <input type="text" name="n1"><br><br>
	Password  <input type="password" name="p1"><br><br>
	<input type="radio" name="user" value="student">Student
	<input type="radio" name="user" value="teacher">Teacher<br><br>

	<input type="submit" value="submit">
	<input type="reset" value="cancel">
	<p>new user
	<a href="signup.jsp">signup</a></p>
	</center>
	</form>
</body>
</html>