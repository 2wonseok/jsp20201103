<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="wonseok.UserInfo" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String area = request.getParameter("area");
	
	if (id != null && name != null && gender != null && area != null) {
		
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
<script>
	alert("등록이 완료되었습니다.");
</script>
<jsp:include page="navbar.jsp" />
<body>
<%
	List<UserInfo> list = (List<UserInfo>) application.getAttribute("user");
	if (list == null) {
		list = new ArrayList<>();
		application.setAttribute("user", list);
	}
	list.add(new UserInfo(request.getParameter("id"), request.getParameter("name"), 
											 request.getParameter("gender"), request.getParameter("area")));
	
%>

<div class="container">
	<div class="container">
		<table class="table">
			<h3>로그인 정보</h3>
			<tr>
				<th>NO</th>
				<th>아이디</th>
				<th>이름</th>
				<th>지역</th>
				<th>성별</th>
			</tr>
<%
	int cnt = 1;
	for (UserInfo users : list) {
%>			
			<tr>
				<td><%= cnt %></td>
				<td><%= users.getId() %></td>
				<td><%= users.getName() %></td>
				<td><%= users.getGender() %></td>
				<td><%= users.getArea() %></td>
			</tr>
<%
	cnt++;
	}
%>			
		</table>
	</div>

</div>
</body>
<jsp:include page="footer.jsp" />
</html>
<%
	} else {
		response.sendRedirect("joinForm.jsp?code=1");
	}
%>
