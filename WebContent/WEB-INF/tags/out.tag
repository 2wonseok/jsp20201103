<%@ tag body-content="tagdependent" language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
<h3>doBody 저장</h3>
<jsp:doBody var="bodyText" />

${bodyText }
 --%>


<jsp:doBody var="bodyText" />
<c:out value="${bodyText } "  escapeXml="true"/>






