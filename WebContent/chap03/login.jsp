<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	if (id != null && id.equals("lws3793") && pw.equals("1234")) {
		pageContext.getSession().setAttribute("id", id); // 다음 페이지로 넘길 파라미터 이름과 값을 재정의
    pageContext.getSession().setAttribute("pw", pw); // 다음 페이지로 넘길 파라미터 이름과 값을 재정의
		response.sendRedirect("index.jsp");
	} else {


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
	아이디 또는 패스워드가 틀립니다. <br/>
	<button onclick="location.href = 'loginEx1.jsp'" class="btn-sm btn-danger mt-1">돌아가기</button>
</body>
</html>
<%
	}
%>
