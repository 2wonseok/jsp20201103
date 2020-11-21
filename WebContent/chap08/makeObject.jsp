<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="member" scope="request" class="chap08.member.MemberInfo"></jsp:useBean>
<%
member.setId("madvirus");
member.setName("최범균");
%>
<jsp:forward page="useObject.jsp"/>
