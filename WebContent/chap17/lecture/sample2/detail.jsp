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
<script>
	$(function() {
		$("#modify-btn").click(function() {
			$('#title-input').removeAttr("readonly");
			$('#body-textarea').removeAttr("readonly");
			$(this).hide();
			$('#submit-btn').removeAttr("hidden");
		});
		$("#remobve-btn").click(function() {
			var c = confirm("삭제하시겠습니까?"); 
			if (c) {
				location.href="remove?id=${param.id}";
			} else {
				return false;
			}
		});
	});
</script>
</head>
<body>
<c:url value="/sample2/modify" var="modifyUrl" >
	<c:param name="id">${param.id}</c:param>
</c:url>

<div class="container">
	<h2>상세 보기</h2>
	<form action="${modifyUrl}" method="post" >
		<input type="text" id="title-input" name="title" value="${postView.title }" readonly /> <br />
		<textarea id="body-textarea" name="body" cols="30" rows="10" readonly>${postView.body }</textarea> <br />
		<input type="submit" id="submit-btn" hidden value="등록" class="btn btn-secondary" /> 
	</form>
	<button class="btn btn-secondary" id="modify-btn">수정</button>
	<button class="btn btn-danger" id="remobve-btn">삭제</button> <br />
	
	
</div>

</body>
</html>