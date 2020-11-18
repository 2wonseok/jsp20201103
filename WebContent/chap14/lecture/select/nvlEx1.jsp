<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%
String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String user = "c##mydbms";
String password = "admin";

String sql = "SELECT ename, salary * 12 + NVL(commission, 0) AS sal "
						+ " FROM employee "
						+ " WHERE eno = 1234";

String ename = ""; 
int sal = 0;

try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
} catch (ClassNotFoundException e) {
	e.printStackTrace();
}

try (
	Connection conn = DriverManager.getConnection(url, user, password);
	Statement stmt = conn.createStatement();	
	) {
	ResultSet rs = stmt.executeQuery(sql);
	
	if (rs.next()) {
		ename = rs.getString("ename");
		sal = rs.getInt("sal");
	}
} catch(Exception e) {
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
<h1>이름 : <%= ename %></h1>
<h1>연봉 : <%= sal %></h1>

</body>
</html>