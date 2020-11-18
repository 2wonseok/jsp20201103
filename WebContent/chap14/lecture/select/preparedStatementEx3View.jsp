<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%
int dno = Integer.parseInt(request.getParameter("dno"));
String name = request.getParameter("name");

String sql = "SELECT ename FROM employee "
						+"WHERE dno = ? AND UPPER(ename) LIKE UPPER(?)";

Class.forName("oracle.jdbc.driver.OracleDriver");
String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String id = "c##mydbms";
String pw = "admin";					


Connection con = DriverManager.getConnection(url, id, pw);
PreparedStatement pstmt = con.prepareStatement(sql);

pstmt.setInt(1 , dno);
pstmt.setString(2, "%" + name + "%");

ResultSet rs = pstmt.executeQuery();

List<String> list = new ArrayList<>();

while (rs.next()) {
	list.add(rs.getString(1));
}

pstmt.close();
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
<%
	for (String mem : list) {
%>

<h1>이름 : <%= mem %></h1>
<%
	}
%>

</body>
</html>