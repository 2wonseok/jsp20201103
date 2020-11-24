<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="chap14.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%
Class.forName("oracle.jdbc.driver.OracleDriver");
String url = "jdbc:oracle:thin:@localhost:1522:orcl3";
String id = "c##mydbms";
String pw = "admin";					
String sql = "SELECT eno, ename FROM employee";

Connection con = DriverManager.getConnection(url, id, pw);
Statement stmt = con.createStatement();
ResultSet rs = stmt.executeQuery(sql);

List<Employee> list = new ArrayList<>();

while (rs.next()) {
	Employee e = new Employee();
	e.setEno(rs.getInt(1));
	e.setEname(rs.getString(2));
	list.add(e);
	
}

pageContext.setAttribute("myList", list);
stmt.close();
con.close();

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
	<h1>사원 목록</h1>
	<table class="table">
	<tr>
		<th>사번</th>
		<th>이름</th>
	</tr>
	<c:forEach var="memList" items="${myList }" >
		<tr>
		<td><a href="<%=request.getContextPath() %>/chap14/lecture/select/joinEx7Detail.jsp?id=${memList.eno }">${memList.eno }</a></td>
		<td>${memList.ename }</td>
	</tr>
	</c:forEach>
	</table>
</div>
</body>
</html>