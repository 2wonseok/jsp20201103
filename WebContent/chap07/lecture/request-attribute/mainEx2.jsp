<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%
List<String> list = new ArrayList<>();
list.add("book");
list.add("water");
list.add("dest");
list.add("keyboard");
list.add("mouse");

request.setAttribute("cartlist", list);

%>



<jsp:forward page="subEx2.jsp"></jsp:forward>
