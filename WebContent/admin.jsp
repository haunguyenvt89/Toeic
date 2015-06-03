<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="js/sweetalert/lib/sweet-alert.css">
</head>
<body>
	<!-- Header -->
	
		<jsp:include page="header-admin.jsp"></jsp:include>
	<!-- End header -->

	<!-- Content admin -->
	

	<!-- End content admin -->
		<jsp:include page="main-content-admin.jsp"></jsp:include>
	<!-- Add admin -->
	<div class="panel-add-admin">
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
	<!-- End add admin -->
	
	<!-- Edit admin -->
	<div class="panel-edit-admin">
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
	<!-- End edit admin -->	
</body>

<script type="text/javascript" src="js/jquery-2.1.3.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/core.js"></script>
<script type="text/javascript" src="js/sweetalert/lib/sweet-alert.min.js"></script>
<script type="text/javascript" src="js/admin.js"></script>

</html>