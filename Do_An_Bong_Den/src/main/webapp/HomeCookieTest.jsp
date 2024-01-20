<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 20/01/2024
  Time: 9:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
    <h1>List of cookies</h1>
    <h3>
        <c:forEach items="${pageContext.request.cookies}" var="c">
            ${c.name} &nbsp;&nbsp;&nbsp;:${c.value}<br/>
        </c:forEach>
    </h3>
</body>
</html>
