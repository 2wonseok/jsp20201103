<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="wonseok.UserInfo" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%
	int index = Integer.parseInt(request.getParameter("id"));
	
	List<UserInfo> list = (List<UserInfo>) application.getAttribute("user");
	
	list.remove(index);
	application.setAttribute("user", list);
	response.sendRedirect("login.jsp");

%>
