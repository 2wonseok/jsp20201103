<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/lecture" %>
<% request.setCharacterEncoding("UTF-8"); %>
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
<jsp:include page="navbar.jsp" />
<body>
<div class="container">
	<div class="container">
		<table class="table">
			<h3>회원 정보</h3>
			<tr>
				<th>NO</th>
				<th>아이디</th>
				<th>이름</th>
				<th>지역</th>
				<th>성별</th>
			</tr>
			<c:forEach var="memList" items="${list }" >
			<tr>
				<td>${memList.num}</td>
				<td><a href="memberView?id=${memList.num}">${memList.id}</a></td>
				<td>${memList.name}</td>
				<td>${memList.area}</td>
				<td>${memList.gender}</td>
			</tr>
			</c:forEach>
		</table>
	</div>

</div>
</body>
<jsp:include page="footer.jsp" />
</html>