<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Login</title>
	<link rel="stylesheet" href="css/login.css">	
	<script type="text/javascript" src="js/login.js">	</script>

<head>
<body>
	<div class="wrapper">
		<div class="container">
			<h1>Welcome To Toeic Test Online</h1>
			<form name="frmLogin" class="form" method="post" action="loginServlet">
				<input  name="username" type="text" placeholder="Username" require>
				<input name="password" type="password" placeholder="Password" require>
				<button name="login" type="submit">Login</button>
				<br>
				<a href="sign-up.jsp">Register</a>
			</form>
		</div>
		<div id="massage"></div>
		<ul class="bg-bubbles">
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>	
		</ul>
	</div>
</body>

<script type="text/javascript" src="js/jquery-2.1.3.min.js"></script>
</html>