<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body
{background-color:cyan}</style>
<script>
function validate()
{
	
	var name=document.getElementById("a").value;
	
	var pwd=document.getElementById("b").value;
	var email=document.getElementById("c").value;
	var pno=document.getElementById("d").value;
	
	if(name=="")
		{
			alert("name field is empty");
			return false;
		}
	if(pwd=="")
		{
		alert("enter password");
		return false;
		}
	if(email=="")
		{
		alert("enter email");
		return false;
		}
	if(pno=="")
		{
		alert("enter phone number");
		return false;
		}
	}
	
</script>

</head>
<body>
<center><form action="sig" method="post" onSubmit="return validate()">
<h1>SignUp</h1><br><br>
UserName<input type="text" name="name" id="a"><br><br>
Password<input type="password" name="pass" id="b"><br><br>
Email <input type="text" name="email" id="c"><br><br>
Phone<input type="text" name="pno" id="d"><br><br>
user type <input type="radio" name="user" value="student">Student
<input type="radio" name="user" value="teacher">Teacher<br><br>

<input type="submit" value="register" >
</form>
</center>
</body>

</html>