<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*"%>
<%@ page import="DbCrudTest.*" %>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%
List<Member> list = MemberDao.memberList(); 
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
<body>
<jsp:include page="navbar.jsp" />
<div class="container">
<h3>회원 목록</h3>
	<table class="table">
		<tr>
			<th>NO</th>
			<th>아이디</th>
			<th>이름</th>
			<th>이메일</th>
			<th>성별</th>
			<th>생년월일</th>
			<th>지역</th>
			<th>취미</th>
		</tr>
		<tbody id ="memList">
		</tbody>
	</table>
</div>
</body>
</html>
<script>
	function getMemberList() {
		
		alert('크크킄');
		
		$.ajax({
			url:"mainPage.jsp", 
			dataType:"json",
			Type:"post",
			data:{},
      success : function(response) {
    	  
    	  alert('sadada');
    	  
      }

			});
		
	
		
	}





	getMemberList();



</script>





