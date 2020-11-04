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
	<form action="">
		name : <input type="text" name="fname"/> <br/>
		age : <input type="number" name="age" id="" /> <br/>
		gender : 남 <input type="radio" name="gender" value="male"/> 
						 여 <input type="radio" name="gender" value="famale" /> <br/>
		food : pizza <input type="checkbox" name="food" value="pizza" id="" />
					 burger <input type="checkbox" name="food" value="burger" id="" />
					 icecream <input type="checkbox" name="food" value="icecream" id="" />
					 water <input type="checkbox" name="food" value="water" id="" /> <br/>
		<input type="submit" value="전송" class="btn-sm btn-primary mt-1" />
		<input type="button" class="btn-sm btn-danger" onclick="reLoad()" value="초기화" />
	</form>

<%
	String name = request.getParameter("fname");
	String age = request.getParameter("age");
	String gender = request.getParameter("gender");
	String[] food = request.getParameterValues("food");
%>
	name : <%= name %> <br/>
	age : <%= age %> <br/>
	gender : <%= gender %> <br/>
	food :
	
<%
	if (food != null) {
		for (String foods : food) {
%>			
	<%= foods %>, 
<%
		}
	}
%>
	

	<!--  for (String foods : food) {
		out.print(foods);
		if (food.length > 1) {
			out.print(", ");
		}
	}  -->


 	<!-- if (food != null) {
		for (int i = 0; i < food.length; i++) {
			out.print(food[i]);
			if (i != food.length-1) {
				out.print(", ");
			}
		}
	}  -->

	<br/>
</body>

<script>
	//파라미터 초기화 스크립트
	function reLoad() {
		window.location = window.location.pathname; 
	}

</script>
</html>