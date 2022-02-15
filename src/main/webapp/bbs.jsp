<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<title>JSP Board Web-site</title>
	</head>
	<body>
		<% 
			String userID = null;
			if (session.getAttribute("userID") != null) {
				userID = (String) session.getAttribute("userID");
			}
		%>
		<nav class="navbar navbar-default">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collase-1" aria-expanded="false">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="main.jsp">JSP Board Web-site</a>
			</div>
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li><a href="main.jsp">Main</a></li>
					<li class="active"><a href="bbs.jsp">Board</a></li>
				</ul>
				<% 
					if(userID == null){
				%>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
							Connect
							<span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<li>
								<a href="login.jsp">Login</a>
							</li>
							<li>
								<a href="join.jsp">Join</a>
							</li>
						</ul>
					</li>
				</ul>
				<%
					} else {
				%>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
							Member Administration
							<span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<li>
								<a href="logoutAction.jsp">logout</a>
							</li>
						</ul>
					</li>
				</ul>
				<%	
					}
				%>
				
			</div>
		</nav>
		<div class="container">
			<div class="row">
				<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd;">
					<thead>
						<tr>
							<td style="background-color: #eeeeee; text-align: center;">번호</td>
							<td style="background-color: #eeeeee; text-align: center;">제목</td>
							<td style="background-color: #eeeeee; text-align: center;">작성자</td>
							<td style="background-color: #eeeeee; text-align: center;">작성일</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>안녕하세요</td>
							<td>홍길동</td>
							<td>2021-02-15</td>
						</tr>
					</tbody>
				</table>
				<a href="write.jsp" class="btn btn-primary pull-right">
					글쓰기
				</a>
			</div>
		</div>
		<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
		<script src="js/bootstrap.js"></script>
	</body>
</html>