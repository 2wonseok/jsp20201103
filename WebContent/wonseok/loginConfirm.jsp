<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%
	String email = request.getParameter("email");
	String pw = request.getParameter("pw");
	if (email != null && email.equals("lws3793@naver.com") && pw.equals("1234")) {
		pageContext.getSession().setAttribute("email", email); // 다음 페이지로 넘길 파라미터 이름과 값을 입력
    pageContext.getSession().setAttribute("pw", pw); // 다음 페이지로 넘길 파라미터 이름과 값을 입력
		response.sendRedirect("mainPage.jsp");
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

<title>로그인 확인 페이지</title>
</head>
<body>
	이메일 또는 패스워드가 틀립니다. <br/>
	<button onclick="location.href = 'login.jsp'" class="btn-sm btn-danger mt-1">돌아가기</button>
</body>
</html>
<%
	}
%>