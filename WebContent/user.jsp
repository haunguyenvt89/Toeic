<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/user.css">
	<link rel="stylesheet" type="text/css" href="js/sweetalert/lib/sweet-alert.css">
</head>
<body>
	<!-- Header -->
	<header>
		<div class="header-top">
			<div class="navbar navbar-default navbar-fixed-top" role="navigation">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#">Page Admin</a>
					</div>
					<div class="navbar-collapse collapse">
						<ul class="nav navbar-nav navbar-right">
							<li class="dropdown">
								<a href="#" class="dropdown-toggle menu-account" data-toggle="dropdown">Tài khoản
									<span class="caret"></span>
								</a>
								<ul class="dropdown-menu">
									<li>
										<a href="admin.html" class="menu-account-admin">Admin</a>
									</li>
									<li>
										<a href="user.html" class="menu-account-user">User</a>
									</li>
								</ul>
							</li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle menu-question" data-toggle="dropdown">Question
									<span class="caret"></span>
								</a>
								<ul class="dropdown-menu">
									<li>
										<a href="loaiCH.jsp" class="menu-cauhoi-loaicauhoi">Kind of Question</a>
									</li>
									<li>
										<a href="nhomCH.jsp" class="menu-cauhoi-nhomcauhoi">Group Question</a>
									</li>
									<li>
										<a href="cauhoi.jsp" class="menu-cauhoi">Question</a>
									</li>
								</ul>
							</li>
							<li>
								<a href="dethi.jsp" class="menu-dethi">Exam</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- End header -->

	<!-- Content user -->
	<div id="content-user">
		<div class="container">			
			<div class="title row">
				<div class="col-md-6 title-left">
					<h3>List user</h3>
				</div>
				<div class="col-md-6 title-right">
					<button class="btn btn-default btn-add-user">New</button>
				</div>
				
			</div>
			<table class="table table-bordered table-user">
				<tr>
					<th>No.</th>
					<th>Full Name</th>				
					<th>Username</th>
					<th>Email</th>
					<th>State</th>
					<th>Date</th>
					<th>Edit</th>
				</tr>
				<tr>
					<td>1</td>
					<td>Nguyễn Văn B</td>
					<td>user</td>
					<td>user@gmail.com</td>
					<td>Hoạt động</td>
					<td>20-11-2014 15:30</td>
					<td>
						<a class="glyphicon glyphicon-edit edit-user edit-table" title="Chỉnh sửa" href="#"></a>
						<a class="glyphicon glyphicon-remove delete-user delete-table" title="Xóa"></a>
					</td>
				</tr>
				<tr>
					<td>2</td>
					<td>Nguyễn Văn B</td>
					<td>user</td>
					<td>user@gmail.com</td>
					<td>Hoạt động</td>
					<td>20-11-2014 15:30</td>
					<td>
						<a class="glyphicon glyphicon-edit edit-user edit-table" title="Chỉnh sửa" href="#"></a>
						<a class="glyphicon glyphicon-remove delete-user delete-table" title="Xóa"></a>
					</td>
				</tr>
				<tr>
					<td>3</td>
					<td>Nguyễn Văn B</td>
					<td>user</td>
					<td>user@gmail.com</td>
					<td>Hoạt động</td>
					<td>20-11-2014 15:30</td>
					<td>
						<a class="glyphicon glyphicon-edit edit-user edit-table" title="Chỉnh sửa" href="#"></a>
						<a class="glyphicon glyphicon-remove delete-user delete-table" title="Xóa"></a>
					</td>
				</tr>
			</table>
		</div>
	</div>

	<!-- End content user -->

	<!-- Add user -->
	<div class="panel-add-user">
		<h4>Thêm người dùng</h4>
		<form>
			<table>
				<tr>
					<td>Họ tên</td>
					<td>
						<input type="text" name="fullname" required>
					</td>
				</tr>
				<tr>
					<td>Email</td>
					<td>
						<input type="email" name="email" required>
					</td>
				</tr>
				<tr>
					<td>Tên tài khoản</td>
					<td>
						<input type="text" name="username" required>
					</td>
				</tr>
				<tr>
					<td>Mật khẩu</td>
					<td>
						<input type="password" name="password" required>
					</td>
				</tr>
				<tr>
					<td>Trạng thái</td>
					<td>
						<input type="text" name="status">
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<button type="submit" class="btn btn-default btn-submit btn-panel">Đồng ý</button>
					</td>
				</tr>
			</table>
		</form>
	</div>
	<!-- End add user -->
	
	<!-- Edit user -->
	<div class="panel-edit-user">
		<h4>Chỉnh sửa</h4>
		<form>
			<table>
				<tr>
					<td>Họ tên</td>
					<td>
						<input type="text" name="fullname" required>
					</td>
				</tr>
				<tr>
					<td>Email</td>
					<td>
						<input type="email" name="email" required>
					</td>
				</tr>
				<tr>
					<td>Tên tài khoản</td>
					<td>
						<input type="text" name="username" required>
					</td>
				</tr>
				<tr>
					<td>Mật khẩu</td>
					<td>
						<input type="password" name="password">
					</td>
				</tr>
				<tr>
					<td>Trạng thái</td>
					<td>
						<input type="text" name="status">
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<button type="submit" class="btn btn-default btn-submit btn-panel">Đồng ý</button>
					</td>
				</tr>
			</table>
		</form>
	</div>
	<!-- End edit user -->	
</body>

<script type="text/javascript" src="js/jquery-2.1.3.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/core.js"></script>
<script type="text/javascript" src="js/sweetalert/lib/sweet-alert.min.js"></script>
<script type="text/javascript" src="js/user.js"></script>
</html>