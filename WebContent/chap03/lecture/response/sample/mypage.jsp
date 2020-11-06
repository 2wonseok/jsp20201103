<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<title>이원석</title>
</head>
<body>
<jsp:include page="navbar.jsp"/>

<% 
	List<String> list = new ArrayList<>();
	list.add(request.getParameter("name"));
	list.add(request.getParameter("email"));
	list.add(request.getParameter("area"));
	list.add(request.getParameter("gender"));
	int cnt = 1;
%>



<div class="container">
	<h3>마이페이지</h3>
	<table class="table">
		<thead>
			<tr>
				<th>NO</th>
				<th>이메일</th>
				<th>이름</th>
				<th>지역</th>
				<th>성별</th>
			</tr>
		</thead>
			<tr>
				<td><%= cnt %></td>
				<td><%= request.getParameter("email") %></td>
				<td><%= request.getParameter("name") %></td>
				<td><%= request.getParameter("area") %></td>
				<td><%= request.getParameter("gender") %></td>
			</tr>			
	</table>
		


</div>

</body>
</html>