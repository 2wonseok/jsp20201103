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
	<h2>회원등록</h2>
	<form action="mypage.jsp" name="joinform" method="post">
		<div class="form-group">
	    <label for="exampleInputEmail1">이메일</label>
	    <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
	    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
	  </div>
	  <div class="form-group">
	    <label for="exampleInputPassword1">비밀번호</label>
	    <input type="password" name="pw" class="form-control" id="exampleInputPassword1">
	  </div>
	  <div class="form-group">
	    <label for="exampleInputName">이름</label>
	    <input type="text" name="name" class="form-control">
	  </div>
	  <div class="form-group">
	    <label for="exampleInputGender">성별: </label>
	    남 <input type="radio" name="gender" value="male" >
	    여 <input type="radio" name="gender" value="famale" >
	  </div>
	  <div class="form-group">
	    <label for="exampleInputArea">지역</label>
	    <input type="text" name="area" class="form-control" id="exampleInputPassword1">
	  </div>
	  <button type="submit" class="btn btn-success">회원가입</button>
	  <button type="button" class="btn btn-primary" onclick="location.href='login.jsp'">돌아가기</button>
	</form>
</div>

</body>
</html>