<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%
String num = request.getParameter("num");

if (num != null && num.equals("1")) {
%>
<a href="test.jsp?num=1">
	<img src="IU.jpg" alt="" style="width:300px; height:300px;"/>
</a>
<a href="test.jsp?num=3">
	<img src="SEO.jpg" alt="" style="width:300px; height:300px;"/>
</a>	
<%	
return;
 } else if (num != null && num.equals("2")) {
%>
<a href="test.jsp?num=2">
	<img src="moon.jpg" alt="" style="width:300px; height:300px;"/>
</a>
<a href="test.jsp?num=3">
	<img src="SEO.jpg" alt="" style="width:300px; height:300px;"/>
</a>

<%
return;
 } else if (num != null && num.equals("3")) {
%>
<a href="test.jsp?num=1">
	<img src="IU.jpg" alt="" style="width:300px; height:300px;"/>
</a>
<a href="test.jsp?num=2">
	<img src="moon.jpg" alt="" style="width:300px; height:300px;"/>
</a>
<%
return;
 }
%>	
<a href="test.jsp?num=1">
	<img src="IU.jpg" alt="" style="width:300px; height:300px;"/>
</a>
<a href="test.jsp?num=2">
	<img src="moon.jpg" alt="" style="width:300px; height:300px;"/>
</a>

