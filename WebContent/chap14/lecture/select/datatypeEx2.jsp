<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@page import="java.sql.*"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%
String sql = "SELECT commission FROM employee WHERE eno = 1234";
String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String user = "c##mydbms";
String pw = "admin";

int commission = 0;

Class.forName("oracle.jdbc.driver.OracleDriver");

try (Connection conn = DriverManager.getConnection(url, user, pw);
		Statement stmt = conn.createStatement();) {
	
	ResultSet rs = stmt.executeQuery(sql);
	
	if (rs.next()) {
		commission = rs.getInt("commission");
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
<h1>commission : <%= commission %></h1>

</body>
</html>