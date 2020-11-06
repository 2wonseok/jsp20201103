<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("UTF-8"); %>

<%
	String name = "lee";
	
	pageContext.getSession().setAttribute("name", name);
	
	response.sendRedirect("redirectEx2target.jsp");


%>