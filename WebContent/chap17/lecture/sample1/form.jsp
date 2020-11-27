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

<title>이원석</title>
</head>
<body>
<div class="container">
	<h2>회원가입</h2>
	<form action="${pageContext.request.contextPath }/sample1/process" method="post">
		id : <input type="text" name="id" value="${formId }" /> <br />
		pw : <input type="text" name="pw" value="${formPw }" /> <br />
		<input type="submit" value="가입" />
	</form>
	<c:if test="${formId != null}">
		<div class="alert alert-primary" role="alert">
		  아이디와 패스워드가 일치합니다.
		</div>
	</c:if>
	<c:remove var="formId" scope="session" />
	<c:remove var="formPw" scope="session" />
</div>
</body>
</html>