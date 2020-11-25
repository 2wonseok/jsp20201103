<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="attr0" %>
<%@ tag dynamic-attributes="attr" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


${attr.attr1 }
<br />
${attr["attr2"] }
<br />

<hr />

<ul>
<c:forEach items="${attr }" var="entry">
  <li>${entry.key } : ${entry.value }</li>  
</c:forEach>
</ul>





