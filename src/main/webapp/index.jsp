<%--
  Created by IntelliJ IDEA.
  User: luong
  Date: 12/31/2020
  Time: 1:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <head>
    <title>Dictionary</title>
  </head>
  <body>
  <div class="dictionary">
    <h2> Vietnamese Dictionary</h2>
    <form action="dictionary.jsp" method="post">
      <input type="text" name="txtSearch" id="txtSearch" placeholder="Enter your word: "/>
      <input type="submit" id="submit" value="Search" />
    </form>
  </div>
  </body>
</html>
