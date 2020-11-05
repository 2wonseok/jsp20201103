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

<title>이원석</title>
</head>
<script>
	alert("로그인 성공");
</script>
<jsp:include page="navbar.jsp" />
<body>
<%
	String email2 = (String) pageContext.getSession().getAttribute("email");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String area = request.getParameter("area");
	String gender = request.getParameter("gender");
	
	List<String> list = new ArrayList<>();
	list.add(name);	
	list.add(email);	
	list.add(area);	
	list.add(gender);	
%>

<div class="container">
	<div class="container">
		<table class="table">
			<h3>로그인 정보</h3>
			<tr>
				<th>이름</th>
				<th>이메일</th>
				<th>지역</th>
				<th>성별</th>
			</tr>
			<tr>
				<td><%= list.get(0) %></td>
				<td><%= email %></td>
				<td><%= list.get(2)	 %></td>
				<td><%= gender %></td>
			</tr>
		</table>
	</div>

</div>
</body>
<jsp:include page="footer.jsp" />
</html>