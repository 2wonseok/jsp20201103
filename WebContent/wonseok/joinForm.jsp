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
<body>
<%
	String code = request.getParameter("code");
	if (code != null && code.equals("1")) {
%>
<div class="alert alert-danger" role="alert">
	모든 항목을 입력해주세요.		
</div>
<%
	} else if (code != null && code.equals("2")) {
%>
<div class="alert alert-danger" role="alert">
	로그아웃 되었습니다. 다시 로그인해주세요.
</div>
<%
	}
%>
<div class="container">
	<h2>회원등록 페이지</h2>
	<form action="mainPage.jsp" name="joinform" method="post" onsubmit="return check()">
		<div class="form-group">
	    <label for="exampleInputEmail1">ID</label>
	    <input type="text" name="id" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
	    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
	  </div>
	  <div class="form-group">
	    <label for="exampleInputPassword1">password</label>
	    <input type="password" name="pw" class="form-control" id="exampleInputPassword1">
	  </div>
	  <div class="form-group">
	    <label for="exampleInputName">이름</label>
	    <input type="text" name="name" class="form-control">
	  </div>
	  <div class="form-group">
	    <label for="exampleInputGender">성별: </label>
	    남 <input type="radio" name="gender" value="male" >
	    여 <input type="radio" name="gender" value="famale" >
	  </div>
	  <div class="form-group">
	    <label for="exampleInputArea">지역</label>
	    <input type="text" name="area" class="form-control" id="exampleInputPassword1">
	  </div>
	  <input type="submit" class="btn btn-success" value="회원가입"/>
	  <button type="button" class="btn btn-primary" onclick="location.href='login.jsp'">돌아가기</button>
	</form>
</div>
</body>
</html>
<script>

function check() {
	
  if(joinform.id.value == "") {

    alert("ID를 입력해주세요.");

    joinform.id.focus();

    return false;

  } else if(joinform.pw.value == "") {

	    alert("PASSWORD를 입력해 주세요.");
	
	    joinform.pw.focus();
	
	    return false;

  
	} else if (joinform.name.value == "") {

			alert("이름을 입력해 주세요.");

			joinform.name.focus();

			return false;

	} else if (joinform.gender.value == "") {

			alert("성별을 선택해 주세요.");

			/* joinform.gender.focus(); */

			return false;

	} else if (joinform.area.value == "") {

			alert("지역을 입력해 주세요.");

			joinform.area.focus();

			return false;

	} else
			return true;

	}
</script>