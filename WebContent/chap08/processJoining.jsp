<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="memberInfo" class="chap08.member.MemberInfo" />
<jsp:setProperty property="*" name="memberInfo"/>

<%-- <jsp:setProperty property="password" name="memberInfo"
value = "<%= memberInfo.getId() %>" /> --%>

<jsp:setProperty property="password" name="memberInfo"
value = " ${memberInfo.id}" />

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
<table width="400" border="1" cellpadding="0" cellspacing="0">
	<tr>
		<td>아이디</td>
		<td><jsp:getProperty name="memberInfo" property="id" /></td>
		<td>암호</td>
		<td><jsp:getProperty name="memberInfo" property="password" /></td>
	</tr>
	<tr>
		<td>이름</td>
		<td><jsp:getProperty name="memberInfo" property="name" /></td>
		<td>이메일</td>
		<td><jsp:getProperty name="memberInfo" property="email" /></td>
	</tr>
</table>
</body>
</html>