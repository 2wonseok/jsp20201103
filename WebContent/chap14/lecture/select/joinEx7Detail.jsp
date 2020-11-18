<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="chap14.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%

String eno = request.getParameter("id");
List<Employee> list = EmployeeDao.getMemberView(eno);

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
<div class="container">
<h1>사원 정보</h1>
	<ul>
		<%
		for (Employee emp : list) {
		%>
    <li>사번 : <%= emp.getEno() %></li>
    <li>이름 : <%= emp.getEname() %></li>
    <li>업무 : <%= emp.getJob() %></li>
    <li>부서 : <%= emp.getDname() %></li>
    <li>입사일 : <%= emp.getHireDate() %></li>
    <li>월급 : <%= emp.getSalary() %></li>
    <li>등급 : <%= emp.getGrade() %></li>
    <li>매니저 : <%= emp.getMename() %></li>
		<%
		}
		%>
  </ul>

</div>

</body>
</html>