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

<title>요청 파라미터 출력</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	/* String name = request.getParameter("name");
	String nick = request.getParameter("nick"); */
	String gender = request.getParameter("gender");
	String address = request.getParameter("address");
	String[] pet = request.getParameterValues("pet");
	
	
%>
	id : <%= id %> <br/>
	pw : <%= pw %> <br/>
<%
	Map parameterMap = request.getParameterMap();
	String[] nameParam = (String[]) parameterMap.get("name");
	if (nameParam != null) {
%>
	<%= nameParam[1] %>
	이름 : <%= nameParam[0] %> <br/>
	닉네임: <%= nameParam[1] %> <br/>
<%
	}
%>
	성별 : <%= gender %> <br/>
	주소: <%= address %> <br/>
	좋아하는 동물 : 
<%
	if (pet != null) {
		for (String pets : pet) {
%>	
	<%= pets %> 
<%
		}
	}
%>	
	<br/>	
	<a href="formEx1.jsp" class="btn-sm btn-danger mt-1">뒤로가기</a>

</body>
</html>