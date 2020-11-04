<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
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
	query string : <%= request.getQueryString() %> <br/>
	id: <%= request.getParameter("id") %> <br/>
	pw: <%= request.getParameter("pw") %> <br/>

	<input type="button" value="파라미터 초기화" onclick="reload()" class="btn-sm btn-danger mt-1" />

</body>
<script>
	function reload() {
		
		window.location = window.location.pathname;
	}
</script>
</html>