<%--
  Created by IntelliJ IDEA.
  User: 史聿成
  Date: 2019/1/1
  Time: 21:15
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: 史聿成
  Date: 2018/11/13
  Time: 23:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Please wait a minute</title>
</head>
<body>
<%
    session .removeAttribute("username");

%>
<script>
    window.open("../login.jsp");
    window.close();
</script>
</body>
</html>
