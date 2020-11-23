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
<title>Insert title here</title>
</head>
<body>
같은 값일 경우 == <br />
${param.param1 == param.param2 } <br />
${param.param1 eq param.param2 } <br />
<hr />
다른 값일 경우 != <br /> 
${param.param1 != param.param2 } <br />
${param.param1 ne param.param2 } <br />
<br />
두번째 입력 값이 클 경우 < <br />
${param.param1 < param.param2 } <br />
${param.param1 lt param.param2 } <br />
<hr />
첫번째 입력 값이 클 경우 > <br /> 
${param.param1 > param.param2 } <br />
${param.param1 gt param.param2 } <br />
<hr />
두번째 입력 값이 크거나 같은 경우 <= <br /> 
${param.param1 <= param.param2 } <br />
${param.param1 le param.param2 } <br />
<hr />
첫번째 입력 값이 크거나 같은 경우 >= <br /> 
${param.param1 >= param.param2 } <br />
${param.param1 ge param.param2 } <br />
<hr />

</body>
</html>