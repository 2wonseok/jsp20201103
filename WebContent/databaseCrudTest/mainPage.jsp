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
String searchName = request.getParameter("searchName");
String searchKetword = request.getParameter("searchKetword");

/* if (searchName != null && searchKetword != null) {
	List<Member> search = MemberDao.memberSearch(searchName, searchKetword); 
} */

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
		
<%
	if (searchName == "" || searchKetword == "" || searchName == null || searchKetword == null) {
		for (Member info : list) {
%>
	<tr>
		<td><%= info.getNum() %></td>
		<td><a href="show.jsp?id=<%= info.getNum() %>"><%= info.getId() %></a></td>
		<td><%= info.getName() %></td>
		<td><%= info.getEmail() %></td>
		<td><%= info.getGender() %></td>
		<td><%= info.getBirth() %></td>
		<td><%= info.getArea() %></td>
		<td><%= info.getHobby() %></td>
	</tr>
<%
		}
	} else if (searchName != "" && searchKetword != "") {
		List<Member> search = MemberDao.memberSearch(searchName, searchKetword);
			for (Member s : search) {
%>	
	<tr>
		<td><%= s.getNum() %></td>
		<td><a href="show.jsp?id=<%= s.getNum() %>"><%= s.getId() %></a></td>
		<td><%= s.getName() %></td>
		<td><%= s.getEmail() %></td>
		<td><%= s.getGender() %></td>
		<td><%= s.getBirth() %></td>
		<td><%= s.getArea() %></td>
		<td><%= s.getHobby() %></td>
	</tr>

<%
			}
	}
%>
	</table>
	<form action="" method="get">
		<select name="searchName" id="">
			<option value="">전체</option>
			<option value="userid">아이디</option>
			<option value="username">이름</option>
			<option value="useremail">이메일</option>
			<option value="gender">성별</option>
			<option value="birth">생년월일</option>
			<option value="area">지역</option>
			<option value="hobby">취미</option>
		</select>
		<input type="text" name="searchKetword" id="" />
		<input type="submit" value="검색" class="btn-sm btn-primary mt-1"/>
		<input type="button" value="새로고침" onclick="reload()" class="btn-sm btn-danger mt-1"/>	
	</form>
</div>
</body>
</html>
<script>
	function reload() {
		window.location = window.location.pathname;
		
	}


</script>