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

<div class="container">
<%
	String code = request.getParameter("code");
	if (code != null && code.equals("1")) {
%>
	<div class="alert alert-danger" role="alert">
		아이디 또는 패스워드가 일치하지 않습니다.
	</div>
<%
	} 
%>
<form action="loginProcess.jsp" method="post">
		<div class="form-group">
	    <label for="exampleInputId">ID</label>
	    <input type="text" name="userid" class="form-control" id="userid">
	  </div>
	  <div class="form-group">
	    <label for="exampleInputPassword1">Password</label>
	    <input type="password" name="pw" class="form-control" id="exampleInputPassword1">
	  </div>
	  <button type="submit" class="btn btn-success">로그인</button>
	  <button type="button" class="btn btn-primary" onclick="location.href='joinForm.jsp'">회원가입</button>
	</form>
</div>
</body>
</html>