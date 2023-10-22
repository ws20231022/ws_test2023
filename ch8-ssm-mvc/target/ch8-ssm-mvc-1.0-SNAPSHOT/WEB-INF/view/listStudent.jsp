<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023/10/10
  Time: 11:39
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
    <title>listStudent</title>
    <script type="text/javascript" src="<%=basePath%>js/jquery-min.js"></script>
    <script type="text/javascript">
        $(function () {
            // alert(111);
            studentInfo();
        })

        function studentInfo () {
            $.ajax({
                url:"${pageContext.request.contextPath}/student/query",
                type:"post",
                success:function (resp) {
                    $("#stuBody").html("");
                    $.each(resp,function (i,n) {
                        // alert(n.name);
                        $("#stuBody").append("<tr><td>"+n.id+"</td><td>"+n.name+"</td><td>"+n.age+"</td></tr>")
                    })
                }
            })
        }
    </script>
</head>
<body>
    <div align="center">
        <table>
            <thead>
                <tr>
                    <td>id</td>
                    <td>姓名</td>
                    <td>年龄</td>
                </tr>
            </thead>
            <tbody id="stuBody">

            </tbody>

        </table>
    </div>
</body>
</html>
