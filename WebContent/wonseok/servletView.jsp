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
<body>
<jsp:include page="navbar.jsp" />
<div class="container">
<h3>내 정보</h3>
	<form action="Process.jsp" name="editForm" method="post" onsubmit="return check()">
		<table class="table">
		<c:forEach var="memView" items="${view }" >
			<tr>
				<th>NO</th>
				<th>${memView.num }<input type="hidden" name="mid" value="${memView.num }" /></th>
			</tr>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="userid" value="${memView.id }" disabled/></td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td><input type="password" name="pw" value="${memView.pw }"/></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="username" value="${memView.name }"/></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" name="useremail" value="${memView.email }"/></td>
			</tr>
			<tr>
				<td>성별</td>
				<td>남<input type="radio" name="gender" id="1" value="male" checked onclick="return(false);"/> 여<input type="radio" name="gender" id="2" value="famale" checked onclick="return(false);"/></td>
			</tr>
			<tr>
				<td>생년월일</td>
				<td><input type="date" name="birth" value="${memView.birth }"/></td>
			</tr>
			<tr>
				<td>지역</td>
				<td><input type="text" name="area" value="${memView.area }"/></td>
			</tr>
			<tr>
				<td>취미</td>
				<td><input type="text" name="hobby" value="${memView.hobby }"/></td>
			</tr>
			
		</table>
			<input type="submit" class="btn btn-dark mt-1" value="수정하기" />
			<input type="button" class="btn btn-primary mt-1" value="목록" onclick="location.href='memberList'" />
			<input type="submit" name="del" class="btn btn-danger mt-1" value="삭제" />
	</form>
</div>
</body>
<script>
	var gender = "${memView.gender }";
	
	if (gender == "male") {
		$("input:radio[name='gender']:radio[value='male']").prop('checked', true); 
	} else {
		$("input:radio[name='gender']:radio[value='famale']").prop('checked', true);
	}

	function check() {
		if (confirm("정말 수정(삭제) 하시겠습니까?") == true) {   
		    document.editForm.submit();
		}else{   
		    return false;
		}
	}
</script>
	</c:forEach>
</html>