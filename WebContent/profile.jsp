<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Các bài đã thi</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">	
	<link rel="stylesheet" type="text/css" href="css/page-style.css">
	<link rel="stylesheet" type="text/css" href="js/sweetalert/lib/sweet-alert.css">
</head>
<body>	
	<div class="container">
		<div class="wrapper">
			<div class="header">
				<div class="row">
					<div class="col-md-12">
						<a href="#">TOIEC</a>
						<p>The Completed Guides for your Best Result on TOEIC Tests</p>
					</div>
				</div>	
			</div>
			<div class="menu">
				<ul>
					<li>
						<a href="main.html">Trang chủ</a>
					</li>
					<li>
						<a href="introduce-exam.html">Thi thử</a>
					</li>
					<li>
						<a href="list-exam.html">Bài đã thi</a>
					</li>
					<li>
						<a href="introduce.html">Giới thiệu</a>
					</li>
					<li class="dropdown navbar-right">
						<a class="dropdown-toggle menu-account" data-toggle="dropdown">Welcome, Nguyễn Văn A
							<span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<li>
								<a href="profile.html">Thông tin cá nhân</a>
							</li>
							<li>
								<a href="login.html">Đăng xuất</a>
							</li>
						</ul>
					</li>
				</ul>
			</div>
			<div class="main-content">
				<div class="row">
					<div class="col-md-9 col-xs-6 content">
						<p class="title">Thông tin người dùng</p>
						<form class="profile">
							<table>
								<tr>
									<td>
										<label>Fullname:</label>
									</td>
									<td>
										<input type="text" name="fullname" value="Nguyễn Văn A" required>
									</td>
								</tr>
								<tr>
									<td>
										<label>Username:</label>
									</td>
									<td>
										<input type="text" name="username" value="abcxyz" required>
									</td>
								</tr>
								<tr>
									<td>
										<label>Password:</label>	
									</td>
									<td>
										<input type="password" name="password" placeholder="New password">
									</td>
								</tr>
								<tr>
									<td>
										<label>Email:</label>
									</td>
									<td>
										<input type="email" name="email" value="nguyenvana@gmail.com">
									</td>
								</tr>
								<tr>
									<td></td>
									<td>
										<button class="btn btn-default">Cập nhật</button>
									</td>
								</tr>

							</table>
						</form>
					</div>
				<--right-slide bar-->
				</div>	
			</div>
		</div>
	</div>	
</body>
<script type="text/javascript" src="js/jquery-2.1.3.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
</html>