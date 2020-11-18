<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%
String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String user = "c##mydbms";
String password = "admin";

String job = request.getParameter("job");
String sql = "SELECT MAX(salary), MIN(salary), AVG(salary), SUM(salary) "
						+"FROM employee "
						+"WHERE job= '" + job + "' ";
int max = 0;
int min = 0;
double avg = 0.0;
int sum = 0;

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
		max = rs.getInt(1);
		min = rs.getInt(2);
		avg = rs.getDouble(3);
		sum = rs.getInt(4);
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
<h1>최대 : <%= max %></h1>
<h1>최소 : <%= min %></h1>
<h1>평균 : <%= avg %></h1>
<h1>합계 : <%= sum %></h1>

</body>
</html>