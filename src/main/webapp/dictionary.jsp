<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: luong
  Date: 1/1/2021
  Time: 9:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dictionary</title>
</head>
<body>

<%!
    Map<String,String> dic= new HashMap<>();
%>
<%
    dic.put("hello", "Xin chào");
    dic.put("how", "Thế nào");
    dic.put("book", "Quyển vở");
    dic.put("computer", "Máy tính");

    request.setAttribute("s",dic);
%>
<c:set var="search" value="${pageContext.request.getParameter('txtSearch')}"/>
<c:set var="value" value="${s.get(search)}"/>

<!-- Duyet foreach -->
    <c:choose>
        <c:when test="${s.get(search)!=nul}">
            Search: <c:out  value="${search}"/><p>
            Value:  <c:out value="${value}"/><p>
        </c:when>
        <c:otherwise>
            <p>No found</p>
            </c:otherwise>
    </c:choose>

<a href="index.jsp">back</a>
</body>
</html>
