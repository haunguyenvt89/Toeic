..........<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">	
	<link rel="stylesheet" type="text/css" href="css/manager_login.css">
	<link rel="stylesheet" type="text/css" href="js/sweetalert/lib/sweet-alert.css">
</head>
<body>
	<div class="container">
		<div class="row wrapper">
			<form>
				<h3>Login</h3>
				<input type="text" name="username" placeholder="Username" required autofocus>
				<br>
				<input type="password" name="password" placeholder="Password" required autofocus>
				<br>
				<button class="btn btn-default" type="submit">Login</button>
				<br>
				<a href="#">Forgot your password</a>
			</form>
		</div>
	</div>
</body>

<script type="text/javascript" src="js/jquery-2.1.3.min.js"></script>	
<script type="text/javascript" src="js/sweetalert/lib/sweet-alert.min.js"></script>
</html>