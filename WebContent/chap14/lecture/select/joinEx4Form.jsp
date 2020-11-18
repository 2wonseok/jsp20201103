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
	<form action="joinEx4View.jsp">
		<select name="grade" id="">
			<option value="1">1등급</option>
			<option value="2">2등급</option>
			<option value="3">3등급</option>
			<option value="4">4등급</option>
			<option value="5">5등급</option>
		</select><br/>
		<input type="submit" value="검색" class="btn-sm btn-success mt-1" />
	</form>
</body>
</html>