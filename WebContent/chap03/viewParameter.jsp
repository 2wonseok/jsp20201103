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
	<b>request.getParameter() 메소드 사용</b><br/>
	name 파라미터 : <%= request.getParameter("name") %> <br/>
	address 파라미터 : <%= request.getParameter("address") %>
	<p>
	<b>request.getParameterValues() 메소드 사용</b><br/>
<%
	String[] values = request.getParameterValues("pet");
	if (values != null) {
		for (String str : values) {
%>
	<%= str %>

<%			
		}
	}
%>
	<p>
	<b>request.getParameterNames() 메소드 사용</b><br/>
<%
	Enumeration paramEnum = request.getParameterNames();
 	while (paramEnum.hasMoreElements()) {
 		String name = (String) paramEnum.nextElement();
%>

		<%= name %>
<%		
 	}
%>
	<p>
	<b>request.getParameterMap() 메소드 사용</b><br/> <!--  파라미터 목록을 호출할 때 사용 -->
<%
	Map parameterMap = request.getParameterMap();
	String[] nameParam = (String[]) parameterMap.get("name");
	if (nameParam != null) {
%>
	name = <%= nameParam[0] %>
<%
	}
%>
	<br/>	
	<a href="form.jsp" class="btn-sm btn-danger mt-1">뒤로가기</a>

</body>
</html>