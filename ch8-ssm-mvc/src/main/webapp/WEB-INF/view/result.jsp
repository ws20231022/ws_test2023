<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023/10/10
  Time: 11:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName()
            + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>result</title>
</head>
<body>
<div align="center">
result.jsp<br><br>
<h3>${msg}</h3>
</div>
</body>
</html>
