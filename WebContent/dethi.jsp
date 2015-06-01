<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Câu hỏi</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
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
						<a class="navbar-brand" href="#">Trang quản lý</a>
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
								<a href="#" class="dropdown-toggle menu-question" data-toggle="dropdown">Câu hỏi
									<span class="caret"></span>
								</a>
								<ul class="dropdown-menu">
									<li>
										<a href="loaiCH.html" class="menu-cauhoi-loaicauhoi">Loại câu hỏi</a>
									</li>
									<li>
										<a href="nhomCH.html" class="menu-cauhoi-nhomcauhoi">Nhóm câu hỏi</a>
									</li>
									<li>
										<a href="cauhoi.html" class="menu-cauhoi">Câu hỏi</a>
									</li>
								</ul>
							</li>
							<li>
								<a href="dethi.html" class="menu-dethi">Đề thi</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- End header -->

	<!-- Content dethi -->
	<div id="content-dethi">
		<div class="container">			
			<div class="title row">
				<div class="col-md-6 title-left">
					<h3>Danh sách đề thi</h3>
				</div>
				<div class="col-md-6 title-right">
					<button class="btn btn-default btn-add-dethi">Thêm mới</button>
				</div>
				
			</div>
			<table class="table table-bordered table-dethi">
				<tr>
					<th>STT</th>
					<th>Mã đề</th>
					<th>Ngày tạo</th>
					<th>Thời gian làm bài(phút)</th>
					<th>Chỉnh sửa</th>
				</tr>
				<tr>
					<td>1</td>
					<td>DE01</td>
					<td>20/12/2012</td>
					<td>180</td>
					<td>
						<a class="glyphicon glyphicon-edit edit-dethi edit-table" title="Chỉnh sửa" href="#"></a>
						<a class="glyphicon glyphicon-remove delete-dethi delete-table" title="Xóa"></a>
					</td>
				</tr>
				<tr>
					<td>2</td>
					<td>DE02</td>
					<td>20/12/2012</td>
					<td>180</td>
					<td>
						<a class="glyphicon glyphicon-edit edit-dethi edit-table" title="Chỉnh sửa" href="#"></a>
						<a class="glyphicon glyphicon-remove delete-dethi delete-table" title="Xóa"></a>
					</td>
				</tr>
				<tr>
					<td>3</td>
					<td>DE03</td>
					<td>20/12/2012</td>
					<td>180</td>
					<td>
						<a class="glyphicon glyphicon-edit edit-dethi edit-table" title="Chỉnh sửa" href="#"></a>
						<a class="glyphicon glyphicon-remove delete-dethi delete-table" title="Xóa"></a>
					</td>
				</tr>
			</table>
		</div>
	</div>

	<!-- End content dethi -->

	<!-- Add dethi -->
	<div class="panel-add-dethi">
		<h4>Thêm đề thi</h4>
		<form>
			<table>
				<tr>
					<td>Câu hỏi:</td>
					<td>
						<input type="checkbox" name="id_cauhoi"> Câu 1
						<input type="checkbox" name="id_cauhoi"> Câu 2
						<input type="checkbox" name="id_cauhoi"> Câu 3
						<input type="checkbox" name="id_cauhoi"> Câu 4
						<input type="checkbox" name="id_cauhoi"> Câu 5
						<br>
						<input type="checkbox" name="id_cauhoi"> Câu 6
						<input type="checkbox" name="id_cauhoi"> Câu 7
						<input type="checkbox" name="id_cauhoi"> Câu 8
						<input type="checkbox" name="id_cauhoi"> Câu 9
						<input type="checkbox" name="id_cauhoi"> Câu 10
						<br>
						<input type="checkbox" name="id_cauhoi"> Câu 11
						<input type="checkbox" name="id_cauhoi"> Câu 12
						<input type="checkbox" name="id_cauhoi"> Câu 13
						<input type="checkbox" name="id_cauhoi"> Câu 14
						<input type="checkbox" name="id_cauhoi"> Câu 15
					</td>
				</tr>
				<tr>
					<td>Thời gian làm bài:</td>
					<td>
						<input type="number">
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
	<!-- End add dethi -->
	
	<!-- Edit dethi -->
	<div class="panel-edit-dethi">
		<h4>Chỉnh sửa</h4>
		<form>
			<table>
				<tr>
					<td>Câu hỏi:</td>
					<td>
						<input type="checkbox" name="id_cauhoi"> Câu 1
						<input type="checkbox" name="id_cauhoi"> Câu 2
						<input type="checkbox" name="id_cauhoi"> Câu 3
						<input type="checkbox" name="id_cauhoi"> Câu 4
						<input type="checkbox" name="id_cauhoi"> Câu 5
						<br>
						<input type="checkbox" name="id_cauhoi"> Câu 6
						<input type="checkbox" name="id_cauhoi"> Câu 7
						<input type="checkbox" name="id_cauhoi"> Câu 8
						<input type="checkbox" name="id_cauhoi"> Câu 9
						<input type="checkbox" name="id_cauhoi"> Câu 10
						<br>
						<input type="checkbox" name="id_cauhoi"> Câu 11
						<input type="checkbox" name="id_cauhoi"> Câu 12
						<input type="checkbox" name="id_cauhoi"> Câu 13
						<input type="checkbox" name="id_cauhoi"> Câu 14
						<input type="checkbox" name="id_cauhoi"> Câu 15
					</td>
				</tr>
				<tr>
					<td>Thời gian làm bài:</td>
					<td>
						<input type="number">
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
	<!-- End edit dethi -->	
</body>

<script type="text/javascript" src="js/jquery-2.1.3.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/core.js"></script>
<script type="text/javascript" src="js/sweetalert/lib/sweet-alert.min.js"></script>
<script type="text/javascript" src="js/dethi.js"></script>
</html>