<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%
String[] foods = request.getParameterValues("food");
request.setAttribute("fav", foods);


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<h3>선택한 음식 목록</h3>
<ul>
<%
for (int i = 0; i < foods.length; i++) {
	request.setAttribute("cnt", i); 
%>
	<li>${fav[cnt] }</li> <br />
<%
}
%>
<hr />
<%
int i = 0;
for (String s : foods) {
	request.setAttribute("i", i);  
%>
	<li>${fav[i] } <br />
<%
	i++;
}
%>
</ul>
</body>
</html>