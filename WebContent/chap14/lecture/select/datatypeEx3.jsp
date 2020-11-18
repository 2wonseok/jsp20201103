<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@page import="java.sql.*"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%
String sql = "SELECT eno, salary, ename, hiredate FROM employee WHERE eno = 7369";
String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String user = "c##mydbms";
String pw = "admin";

int eno = 0;
int salary = 0;
int salarys = 0;
String ename = null;
java.sql.Date hiredate = null;

Class.forName("oracle.jdbc.driver.OracleDriver");

try (Connection conn = DriverManager.getConnection(url, user, pw);
		Statement stmt = conn.createStatement();) {
	
	ResultSet rs = stmt.executeQuery(sql);
	
	if (rs.next()) {
		eno = rs.getInt("eno");
		salary = rs.getInt("salary");
		ename = rs.getString("ename");
		hiredate = rs.getDate("hiredate");
		salarys = salary * 12;
	}
} catch (Exception e) {
	e.printStackTrace();
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
<h3> 사원번호 : <%= eno %> </h3>
<h3> 연봉: <%= salarys  %></h3>
<h3> 이름 : <%= ename %> </h3> 
<h3> 입사 날짜: <%= hiredate  %></h3>

</body>
</html>