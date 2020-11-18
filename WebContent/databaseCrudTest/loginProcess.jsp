<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*"%>
<%@ page import="DbCrudTest.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%
String userid = request.getParameter("userid");
String userpw = request.getParameter("pw");
int cnt = 0;

List<Member> list = MemberDao.memberList();
for (Member m : list) {
	if (userid.equals(m.getId()) && userpw.equals(m.getPw())) {
		cnt = 1;
	} 	
}

if (cnt == 1) {
	response.sendRedirect("mainPage.jsp");
} else {
	response.sendRedirect("login.jsp?code=1");
}
%>
