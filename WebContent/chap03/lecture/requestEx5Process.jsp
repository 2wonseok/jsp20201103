<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
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
결과 : <br/>

<%
	String gugudan = request.getParameter("gugudan");
	int num = 0;
	if (gugudan != null) {
		num = Integer.valueOf(gugudan);
	}
%>
<%
	int i = 1;
	while (i <= 9) {
		String s = num + "&times;" + i + " = " + (num * i);
	 	out.print(s+ "<br/>");
	    i++;
	}
%>

<a href="requestEx5Form.jsp" class="btn-sm btn-secondary mt-1">뒤로</a>
</body>
</html>