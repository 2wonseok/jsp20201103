<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="wonseok.UserInfo" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%
 	String id = request.getParameter("id");
	String pw = request.getParameter("pw"); 
	List<UserInfo> list = (List<UserInfo>) application.getAttribute("user");
	if (list != null) {
		int cnt = 0;
		for (UserInfo memInfo : list) {
			
			if (id != null && id.equals(memInfo.getId()) && pw != null && pw.equals(memInfo.getPw())) {
				
				cnt = 1;
			
			} 
		}
		
		if (cnt == 1) {
			pageContext.getSession().setAttribute("id", (String) id); // 다음 페이지로 넘길 파라미터 이름과 값을 입력
			response.sendRedirect("myPage.jsp");
		} else {
			response.sendRedirect("login.jsp?code=3");
		}
		
	} else {
		response.sendRedirect("login.jsp");
	}
	
%>				
				
		
		

