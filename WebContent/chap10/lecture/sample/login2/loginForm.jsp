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

<title>로그인 페이지</title>
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
	} else if (code != null && code.equals("2")) {
%>
	<div class="alert alert-danger" role="alert">
		로그아웃 되었습니다. 다시 로그인해주세요.
	</div>
<%
	}
%>
	<form action="main.jsp" method="post">
		<div class="form-group">
		    <label for="exampleInputEmail1">아이디</label>
		    <input type="text" name="id" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
		    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
		  </div>
		  <div class="form-group">
		    <label for="exampleInputPassword1">Password</label>
		    <input type="password" name="pw" class="form-control" id="exampleInputPassword1">
		  </div>
	<input type="submit" value="로그인" class="btn-sm btn-success mt-1"/>	
	</form>
</div>

</body>
</html>