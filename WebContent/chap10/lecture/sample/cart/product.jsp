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
	String food = request.getParameter("food");
		Map<String, Integer> map = (Map<String, Integer>) session.getAttribute("cart");
	if (food != null) { 
		if (map == null) {
			map = new HashMap<>();
			session.setAttribute("cart", map);
		}
		int cnt = 1;
		if (map.containsKey(food)) {
			map.put(food, map.get(food) + 1);
		} else {
			map.put(food, cnt);
		}
	}
	int size = 0;
	if (map == null) { 
		size = 0;
	} else {
		size = map.size();
	} 
%>
장바구니 개수 : <%= size %> 개 있음.

<form action="" method="post">
	<select name="food" >
		<option value="water">물</option>
		<option value="pizza">피자</option>
		<option value="burger">버거</option>
		<option value="chocolate">초콜렛</option>
		<option value="icecream">아이스크림</option>
	</select> <br />
<input type="submit" value="장바구니 담기" class="btn-sm btn-dark mt-1"/>
</form>
<a href="cart.jsp">장바구니 보기</a>


</body>
</html>