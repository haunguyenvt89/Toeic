<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Main</title>
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
						<a href="main.jsp">Main</a>
					</li>
					<li>
						<a href="introduce-exam.jsp">Exam tests</a>
					</li>
					<li>
						<a href="list-exam.jsp">Exam list</a>
					</li>
					<li>
						<a href="introduce.jsp">Introduce</a>
					</li>
				</ul>
			</div>
			<div class="main-content">
				<div class="row">
					<div class="col-md-9 col-xs-6 content">
						<p class="title">Shedule</p>
						<table class="table table-striped table-main">
							<tr>
								<th>No.</th>
								<th>Date</th>
								<th>Time</th>
								<th>Join</th>	
							</tr>
							<tr>
								<td>1</td>
								<td>21/05/2015</td>
								<td>
									<p>Ca 1: 8h00 - 10h00</p>									
								</td>
								<td>
									<a href="introduce-exam.jsp" title="Exam">
										<i class="glyphicon glyphicon-hand-right"></i>	
									</a>
								</td>
							</tr>			
						</table>
					</div>
					<div class="col-md-3 col-xs-6 sidebar">
						<p class="title">Top người thi</p>
						<ul>
							<li>Nguyễn Văn A</li>
							
						</ul>
					</div>
				</div>	
			</div>
		</div>
	</div>	
</body>
</html>