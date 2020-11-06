<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="chap07.User" %>
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
<%
List<User> users = (List<User>) request.getAttribute("users");
	
%>

<div class="container">
	<table class="table table-strip">
		<thead>
			<tr>
				<th>NO</th>
				<th>이름</th>
				<th>주소</th>
				<th>나이</th>
			</tr>
		</thead>
<%
	int cnt = 1;
	for (User u : users) {
		
	
%>		
			<tr>
				<td><%= cnt %></td>
				<td><%= u.getName()  %> </td>
				<td><%= u.getAddress() %> </td>
				<td><%= u.getAge()  %></td>
			</tr>
<%
	cnt++;
	}
%>
	</table>

</div>


</body>
</html>