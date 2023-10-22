<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023/10/10
  Time: 11:14
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
    <title>首页</title>
</head>
<body>
    <div align="center">
        <p>SSM框架整合</p>
        <img src="<%=basePath%>images/p3.jpg" style="height: 180px;width: 240px">
        <table>
            <tr>
                <td><a href="<%=basePath%>student/showAdd">注册学生</a></td>
                <td><a href="${pageContext.request.contextPath}/student/find">查询学生</a></td>
            </tr>
        </table>
    </div>
</body>
</html>
