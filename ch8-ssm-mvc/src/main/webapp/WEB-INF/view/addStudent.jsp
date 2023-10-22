<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023/10/10
  Time: 10:55
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
    <%--<base href="<%=basePath%>">--%>
    <title>addStudent</title>
</head>
<body>
<div align="center">
    <form action="${pageContext.request.contextPath}/student/addStudent" method="post">
        <p>学生注册</p>
        <table>
            <tr>
                <td>姓名:</td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td>年龄:</td>
                <td><input type="text" name="age"></td>
            </tr>
            <tr>
                <td><%--<input type="button" value="登录">--%></td>
                <td><input type="submit" value="注册"></td>
            </tr>
        </table>
    </form>

</div>
</body>
</html>
