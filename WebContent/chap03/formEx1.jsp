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

<title>폼 생성</title>
</head>
<body>
	<form action="viewParameterEx1.jsp" method="post">
		id : <input type="text" name="id" size="10" /> <br/>
		pw : <input type="password" name="pw" size="25" style = "margin-top: 1px;" /> <br/>
		이름 : <input type="text" name="name" size="10" style = "margin-top: 2px;" /> <br/>
		닉네임 : <input type="text" name="name" size="10" style = "margin-top: 2px;" /> <br/>
		성별 : 남자 <input type="radio" name="gender" value="male" /> 
					 여자 <input type="radio" name="gender" value="famale" /> <br/>
		주소 : <input type="text" name="address" size="30" /> <br/>
		좋아하는 동물 : 
		<input type="checkbox" name="pet" value="dog" /> 강아지
		<input type="checkbox" name="pet" value="cat" /> 고양이
		<input type="checkbox" name="pet" value="pig" /> 돼지
	<br/>
	<input type="submit" value="전송" class="btn-sm btn-success mt-1" />
	<input type="button" value="초기화" onclick="reload()" class="btn-sm btn-danger" />
	</form>

</body>
<script>
	function reload() {
		window.location = window.location.pathname;
	}



</script>
</html>