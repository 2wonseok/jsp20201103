<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<%-- ${not empty param.dark and not empty dark} <br />
${not dark} <c:if test="${not empty param.dark or dark  }" var="dark" scope="session"> --%>
<c:if test="${not empty param.dark}" var="dark" scope="session">
	<div style="background-color: black; color: white;">
		Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eum culpa nesciunt facere sequi voluptas libero laboriosam repellat accusamus recusandae commodi nihil dicta aliquid atque iusto ex praesentium fugit! Omnis magni.
	</div>
</c:if>

<c:if test="${not dark}" >
	<div style="background-color: blue; color: white;">
		Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eum culpa nesciunt facere sequi voluptas libero laboriosam repellat accusamus recusandae commodi nihil dicta aliquid atque iusto ex praesentium fugit! Omnis magni.
	</div>
</c:if>
</body>
</html>