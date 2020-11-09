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

<title>장바구니</title>
</head>
<body>
<ul>
<%
	Map<String, Integer> map = (Map<String, Integer>) session.getAttribute("cart");
	if (map != null) {
		Set<Map.Entry<String, Integer>> entrys = map.entrySet();
		for (Map.Entry<String, Integer> entry : entrys) {
	
%>
	<li><%= entry.getKey() %> : <%= entry.getValue() %></li>
<%
		}
	} else {
%>
	<li>비어있음.</li>
<%
	}
%>
</ul>
<br/>
<input type="button" value="초기화" class="btn-sm btn-danger" onclick="location.href='reset.jsp'"/>
</body>
</html>