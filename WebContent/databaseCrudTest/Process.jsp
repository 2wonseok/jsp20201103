<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*"%>
<%@ page import="DbCrudTest.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%
String del = request.getParameter("del");
String mid = request.getParameter("mid");
String username = request.getParameter("username");
String useremail = request.getParameter("useremail");
String birth = request.getParameter("birth");
String area = request.getParameter("area");
String hobby = request.getParameter("hobby");	
String userid = request.getParameter("userid");
String userpw = request.getParameter("pw");
String gender = request.getParameter("gender");
int cnt = 0;

if (mid != null) {
	List<Member> list = MemberDao.memberUpdate(mid, userpw, username, useremail, birth, area, hobby);
}

if (del != null) {
	List<String> dels = MemberDao.memberDelete(del,mid);	
}

%>


<script>
		alert('완료되었습니다.');
		location.href = "mainPage.jsp";
</script>