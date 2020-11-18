<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="chap14.EmployeeDao" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%
	String name = request.getParameter("name");
	if (name == null) {
		name = "";
	}
	
	List<String> list = EmployeeDao.getNameLike(name);

%>



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
<h1>검색 결과</h1>
<%
	if (list.size() > 0) {
%>
<ul>
	<%
		for (String n : list) {
	%>
		<li><%= n %></li>
	<%
		}
	%>
	
	</ul>
<%
	} else {
%>
<h2>검색 결과가 없습니다.</h2>
<%
	}
%>
</body>
</html>