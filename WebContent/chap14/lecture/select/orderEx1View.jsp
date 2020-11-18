<%@page import="chap14.EmployeeDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%
	String name = request.getParameter("name");
	String order = request.getParameter("order");
	if (name == null) {
		name = "";
	}
	/* name = name.toUpperCase(); */
	
	if (order == null) {
		order = "1";
	}
	
	List<String> list = null;
	
	switch (order) {
	case "1" :
		list = EmployeeDao.getNameLike(name);
		break;
	case "2" :
		list = EmployeeDao.getNameLike(name, true);
		break;
	case "3" :
		list = EmployeeDao.getNameLike(name, false);
		break;
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
	}
%>
</body>
</html>