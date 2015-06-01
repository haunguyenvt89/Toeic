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

	<!-- Content cauhoi -->
	<div id="content-cauhoi">
		<div class="container">			
			<div class="title row">
				<div class="col-md-6 title-left">
					<h3>Danh sách câu hỏi</h3>
				</div>
				<div class="col-md-6 title-right">
					<button class="btn btn-default btn-add-cauhoi">Thêm mới</button>
				</div>
				
			</div>
			<table class="table table-bordered table-cauhoi">
				<tr>
					<th>STT</th>
					<th>Tên loạiCH</th>
					<th>Tên nhómCH</th>
					<th>Nội dung (text)</th>
					<th>Nội dung (mp3)</th>
					<th>Nội dung (image)</th>
					<th>Chỉnh sửa</th>
				</tr>
				<tr>
					<td>1</td>
					<td>Loại 1</td>
					<td>Nhóm 1</td>
					<td>ABCXYZ</td>
					<td>cauhoi1.mp3</td>
					<td>
						<img src="image/image.png">
					</td>
					<td>
						<a href="luachon.html" class="glyphicon glyphicon-plus" title="Thêm lựa chọn"></a>
						<a class="glyphicon glyphicon-edit edit-cauhoi edit-table" title="Chỉnh sửa" href="#"></a>
						<a class="glyphicon glyphicon-remove delete-cauhoi delete-table" title="Xóa"></a>
					</td>
				</tr>
				<tr>
					<td>2</td>
					<td>Loại 1</td>
					<td>Nhóm 1</td>
					<td>ABCXYZ</td>
					<td>cauhoi1.mp3</td>
					<td>
						<img src="image/image.png">
					</td>
					<td>
						<a href="luachon.html" class="glyphicon glyphicon-plus" title="Thêm lựa chọn"></a>
						<a class="glyphicon glyphicon-edit edit-cauhoi edit-table" title="Chỉnh sửa" href="#"></a>
						<a class="glyphicon glyphicon-remove delete-cauhoi delete-table" title="Xóa"></a>
					</td>
				</tr>
				<tr>
					<td>3</td>
					<td>Loại 1</td>
					<td>Nhóm 1</td>
					<td>ABCXYZ</td>
					<td>cauhoi1.mp3</td>
					<td>
						<img src="image/image.png">
					</td>
					<td>
						<a href="luachon.html" class="glyphicon glyphicon-plus" title="Thêm lựa chọn"></a>
						<a class="glyphicon glyphicon-edit edit-cauhoi edit-table" title="Chỉnh sửa" href="#"></a>
						<a class="glyphicon glyphicon-remove delete-cauhoi delete-table" title="Xóa"></a>
					</td>
				</tr>
			</table>
		</div>
	</div>

	<!-- End content cauhoi -->

	<!-- Add cauhoi -->
	<div class="panel-add-cauhoi">
		<h4>Thêm câu hỏi</h4>
		<form>
			<table>
				<tr>
					<td>Loại câu hỏi:</td>
					<td>
						<select>
							<option value="id_loaiCH">Loại 1</option>
							<option value="id_loaiCH">Loại 2</option>
							<option value="id_loaiCH">Loại 3</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>Nhóm câu hỏi:</td>
					<td>
						<select>
							<option value="id_nhomCH">Nhóm 1</option>
							<option value="id_nhomCH">Nhóm 2</option>
							<option value="id_nhomCH">Nhóm 3</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>Nội dung (text):</td>
					<td>
						<textarea name="noidung_text"></textarea>
					</td>
				</tr>
				<tr>
					<td>Nội dung (mp3):</td>
					<td>
						<input type="file" name="noidung_mp3">
					</td>
				</tr>
				<tr>
					<td>Nội dung (img):</td>
					<td>
						<input type="file" name="noidung_img">
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
	<!-- End add cauhoi -->
	
	<!-- Edit cauhoi -->
	<div class="panel-edit-cauhoi">
		<h4>Chỉnh sửa</h4>
		<form>
			<table>
				<tr>
					<td>Loại câu hỏi:</td>
					<td>
						<select>
							<option value="id_loaiCH">Loại 1</option>
							<option value="id_loaiCH">Loại 2</option>
							<option value="id_loaiCH">Loại 3</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>Nhóm câu hỏi:</td>
					<td>
						<select>
							<option value="id_nhomCH">Nhóm 1</option>
							<option value="id_nhomCH">Nhóm 2</option>
							<option value="id_nhomCH">Nhóm 3</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>Nội dung (text):</td>
					<td>
						<textarea name="noidung_text"></textarea>
					</td>
				</tr>
				<tr>
					<td>Nội dung (mp3):</td>
					<td>
						<input type="file" name="noidung_mp3">
					</td>
				</tr>
				<tr>
					<td>Nội dung (img):</td>
					<td>
						<input type="file" name="noidung_img">
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
	<!-- End edit cauhoi -->	
</body>

<script type="text/javascript" src="js/jquery-2.1.3.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/core.js"></script>
<script type="text/javascript" src="js/sweetalert/lib/sweet-alert.min.js"></script>
<script type="text/javascript" src="js/cauhoi.js"></script>
</html>