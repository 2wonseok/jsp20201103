<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%
List<String> list = new ArrayList<>();
list.add("java");
list.add("servlet");
list.add("jsp");
list.add("html");
list.add("el");
list.add("css");

pageContext.setAttribute("alist", list);
%>
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
${alist[0] } <br />
<hr />
<%
for (int i = 0; i < list.size(); i++) {
	pageContext.setAttribute("cnt", i); 
%>
	${alist[cnt] } <br />
<%
}
%>
</body>
</html>