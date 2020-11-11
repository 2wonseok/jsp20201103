<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="wonseok.UserInfo" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%
	String id = (String) request.getSession().getAttribute("id");
	List<UserInfo> list = (List<UserInfo>) application.getAttribute("user");
	
	UserInfo member = null;
	
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
<jsp:include page="navbar.jsp" />
<body>
<div class="container">
	<div class="container">
		<table class="table">
			<h3>마이 페이지</h3>
			<tr>
				<th>NO</th>
				<th>아이디</th>
				<th>이름</th>
				<th>지역</th>
				<th>성별</th>
				<th>삭제</th>
			</tr>

<%
	for (int i = 0; i < list.size(); i++) {
		if(list.get(i).getId().equals(id)) {
			member = list.get(i);
%>
			<tr>
				<td>1</td>
				<td><%= member.getId() %></td>
				<td><%= member.getName() %></td>
				<td><%= member.getArea() %></td>
				<td><%= member.getGender() %></td>
				<td><input type="button" class="btn-sm btn-danger" value="회원 삭제" onclick="remove()"/></td>
			</tr>
			
<script>
	function remove() {
		 if(confirm("정말 삭제하시겠습니까?")) {
			alert('삭제가 완료되었습니다.');
		  location.href="remove.jsp?id=<%= i %>";
		 } else {
		 	return;
		 }
		}
</script>			
<%			
		}
	}
%>			
		</table>
	</div>
</div>
</body>
</html>
