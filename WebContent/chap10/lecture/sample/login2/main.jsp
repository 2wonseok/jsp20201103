<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	System.out.println(id);
	System.out.println(pw);
	
	if (id != null && !id.equals("") && pw != null && !pw.equals("")) {
		if (id.equals(pw)) {
			session.setAttribute("id", id);
		} else {
			response.sendRedirect("loginForm.jsp?code=1");
		}
	} else {
		response.sendRedirect("loginForm.jsp?code=1");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<title>메인페이지</title>
</head>
<body>
<h2>로그인에 성공하였습니다.</h2>
<%= session.getAttribute("id") %>님 반갑습니다. <br/>
<a href="logout.jsp">로그아웃</a>



</body>
</html>