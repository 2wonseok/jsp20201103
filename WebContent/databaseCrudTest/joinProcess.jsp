<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*"%>
<%@ page import="DbCrudTest.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%
String userid = request.getParameter("userid");
String userpw = request.getParameter("pw");
String username = request.getParameter("username");
String useremail = request.getParameter("useremail");
String gender = request.getParameter("gender");
String birth = request.getParameter("birth");
String area = request.getParameter("area");
String hobby = request.getParameter("hobby");	
int cnt = 0;

List<Member> idCheck = MemberDao.memberList();
for (Member m : idCheck) {
	if (userid.equals(m.getId())) {
		cnt = 2;
	} 	
}

if (cnt == 2) {
	response.sendRedirect("joinForm.jsp?code=2");
}

if (cnt != 2) {
	List<Member> add = MemberDao.memberInsert(userid,userpw, username,useremail,gender,birth,area,hobby);
}
%>
<script>
		alert('등록이 완료되었습니다.');
		location.href = "login.jsp";
</script>