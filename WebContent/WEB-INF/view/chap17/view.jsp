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
			$('#title').removeAttr("readonly");
			$('#body').removeAttr("readonly");
			
		  $(this).hide();
			$('#submit-btn').removeAttr("hidden");
			$('#remove-btn').removeAttr("hidden");
		  
		});
		
		$("#remove-btn").click(function() {
			var c = confirm("삭제하시겠습니까?"); 
			if (c) {
				location.href="${pageContext.request.contextPath }/sample3/post/add?oper=del&id=${param.id}";
			} else {
				return false;
			}
		});
		
	});
	
	
	function check() {
		if (confirm("정보를 수정하시겠습니까?") == true) {   
		    document.modifyForm.submit();
		}else{   
		    return false;
		}
	}
</script>
</head>
<body>
<c:url value="/sample3/post/add" var="modifyUrl" >
	<c:param name="id">${param.id}</c:param>
</c:url>
<div class="container">
<h1>상세 보기</h1>
	<form action="${modifyUrl }" name="modifyForm" method="post" onsubmit="return check()">
		제목 : <input type="text" name="title" id="title" value="${view.title }" readonly/><br />
		<textarea name="body" id="body" cols="30" rows="10" readonly>${view.body }</textarea><br />
		<input type="submit" id="submit-btn"  value="완료" class="btn btn-secondary" hidden /> 
		<input type="button" id="remove-btn" name="del" class="btn btn-danger mt-1" value="삭제" hidden />
	</form>
	<button class="btn btn-secondary" id="modify-btn">수정</button>
</div>

</body>
</html>