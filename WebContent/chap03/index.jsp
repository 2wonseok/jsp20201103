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

<title>마이페이지</title>
</head>
<body>
<%
	String email = (String) pageContext.getSession().getAttribute("email");
	String pw = (String) pageContext.getSession().getAttribute("pw");
	/* String id = request.getParameter("id");
	String pw = request.getParameter("pw"); */

%>
<p>로그인에 성공하셨습니다.</p>
	사용자 email = <%= email %> <br/>
	사용자 pw = <%= pw %> <br/>
	<input type="button" value="돌아가기" class="btn-sm btn-dafault mt-1" onclick="location.href='loginEx1.jsp'" /> <br/>
	<button class="btn-sm btn-success mt-1" onclick="location.href='https://www.naver.com'">버튼을 이용한 페이지 이동</button> <br/>
	<input type="button" value="인풋을 이용한 페이지 이동" class="btn-sm btn-primary mt-1" onclick="window.open('https://www.daum.net')" /> <br/>
	<a href="https://www.google.com" class="btn-sm btn-dark" target="_blank">a태그를 이용한 페이지 이동</a> <br/>
</body>
</html>