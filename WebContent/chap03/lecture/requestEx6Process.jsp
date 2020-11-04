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

<%
	Set<Integer> lotto = new HashSet<>();
	while (lotto.size() < 6) {
		lotto.add((int) (Math.random()*45 + 1));
	}
	String[] lottoNumber = request.getParameterValues("num");
	List<Integer> lottoNum = new ArrayList<>();
	
	for (String s : lottoNumber) {
		lottoNum.add(Integer.valueOf(s.substring(1)));
	}
	
	int cnt = 0;
	for (Integer s : lottoNum) {
		if (lotto.contains(s)) {
			cnt++;
		}
	}
	
	out.print("당첨번호: ");
	out.print(lotto);
	out.print("<br/>");

%>
내가 찍은 번호: <%= lottoNum %> <br/>

맞춘 개수: 	<%= cnt %>




</body>
</html>