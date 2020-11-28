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
<script>
	var gender = "${memView.gender }";
	
	if (gender == "male") {
		$("input:radio[name='gender']:radio[value='male']").prop('checked', true); 
	} else {
		$("input:radio[name='gender']:radio[value='famale']").prop('checked', true);
	}

	
	$(function() {
		$("#modify-btn").click(function() {
			$('#pw').removeAttr("readonly");
			$('#username').removeAttr("readonly");
			$('#useremail').removeAttr("readonly");
			$('#birth').removeAttr("readonly");
			$('#area').removeAttr("readonly");
			$('#hobby').removeAttr("readonly");
		  $(this).hide();
		  $('#back-btn2').hide();
		  $('#remove-btn2').hide();
			$('#submit-btn').removeAttr("hidden");
			$('#back-btn').removeAttr("hidden");
			$('#remove-btn').removeAttr("hidden");
		});
		
		$("#remove-btn").click(function() {
			var c = confirm("삭제하시겠습니까?"); 
			if (c) {
				location.href="remove?id=${param.id}";
			} else {
				return false;
			}
		});
		
	});
	
	function check() {
		if (confirm("정보를 수정하시겠습니까?") == true) {   
		    document.editForm.submit();
		}else{   
		    return false;
		}
	}
</script>
</head>
<style>
	.form-control {
		width : 200px;
	}
</style>
<body>
<jsp:include page="navbar.jsp" />
<c:url value="/modify" var="modifyUrl" >
	<c:param name="id">${param.id}</c:param>
</c:url>
<div class="container">
<h3>내 정보</h3>
	<form action="${modifyUrl }" name="editForm" method="post" onsubmit="return check()" >
		<table class="table">
		<c:forEach var="memView" items="${view }" >
			<tr>
				<th>NO</th>
				<th>${memView.num }<input type="hidden" name="mid" value="${memView.num }" /></th>
			</tr>
			<tr>
				<td>아이디</td>
				<td><input type="text" class="form-control" name="userid" value="${memView.id }" disabled/></td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td><input type="password" class="form-control" id="pw" name="pw" value="${memView.pw }" readonly/></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" class="form-control" id="username" name="username" value="${memView.name }" readonly/></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" class="form-control" id="useremail" name="useremail" value="${memView.email }" readonly/></td>
			</tr>
			<tr>
				<td>성별</td>
				<td>남<input type="radio" name="gender" id="1" value="male" checked onclick="return(false);"/> 여<input type="radio" name="gender" id="2" value="famale" checked onclick="return(false);"/></td>
			</tr>
			<tr>
				<td>생년월일</td>
				<td><input type="date" class="form-control" id="birth" name="birth" value="${memView.birth }" readonly/></td>
			</tr>
			<tr>
				<td>지역</td>
				<td><input type="text" class="form-control" id="area" name="area" value="${memView.area }" readonly/></td>
			</tr>
			<tr>
				<td>취미</td>
				<td><input type="text" class="form-control" id="hobby" name="hobby" value="${memView.hobby }" readonly/></td>
			</tr>
	</c:forEach>
		</table>
			<input type="submit" id="submit-btn"  value="완료" class="btn btn-secondary" hidden /> 
			<input type="button" id="back-btn" class="btn btn-primary mt-1" value="목록" onclick="location.href='memberList'" hidden />
			<input type="button" id="remove-btn" name="del" class="btn btn-danger mt-1" value="삭제" hidden />
	</form>
			<button class="btn btn-secondary" id="modify-btn">수정</button>
			<input type="button" id="back-btn2" class="btn btn-primary mt-1" value="목록" onclick="location.href='memberList'" />
</div>
</body>
</html>