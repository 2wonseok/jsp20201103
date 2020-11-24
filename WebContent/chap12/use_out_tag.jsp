<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.io.IOException, java.io.FileReader" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%
FileReader reader = null;
try {
	String path = "/chap12/use_out_tag.jsp";
	reader = new FileReader(application.getRealPath(path));

%>
<pre>
소스 코드 = <%= path %>
<c:out value="<%= reader %>" escapeXml="true" />
</pre>
<%
} catch(IOException e) {
%>
에러 <%= e.getMessage() %>
<%
} finally {
		if (reader != null)
			try {
				reader.close();
			} catch(IOException e) {}
	}		
%>