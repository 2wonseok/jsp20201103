<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="chap05.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%
	String title = request.getParameter("title");
	String body = request.getParameter("body");
	List<Post> list = (List<Post>) application.getAttribute("list");
	if (list == null) {
		list = new ArrayList<Post>();
		application.setAttribute("list", list);
	}
	if (title != null && !title.isEmpty() && body != null && !body.isEmpty()) {
		Post p = new Post();
		p.setTitle(title);
		p.setBody(body);
		
		list.add(p);
	}


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
<h1>방명록</h1>
<form action="" method="post">
	제목 : <input type="text" name="title" /> <br/>
	<textarea name="body" cols="30" rows="10"></textarea><br/>
	<input type="submit" value="등록" class="btn-sm btn-primary mt-1"/>
</form>
<hr/>
<ul>
<%
	for (int i = 0; i < list.size(); i++) {
%>
	<li><a href="detail.jsp?id=<%= i %>"><%= list.get(i).getTitle() %></a></li>

<%
	}
%>
</ul>


</body>
</html>