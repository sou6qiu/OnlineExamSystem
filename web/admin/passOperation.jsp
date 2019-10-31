<%--
  Created by IntelliJ IDEA.
  User: 史聿成
  Date: 2018/12/18
  Time: 15:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.DAO.UserDao,com.DAO.entity.user,java.nio.charset.StandardCharsets" %>
<%@ page import="com.DAO.UserDao" %>
<html>
<head>
    <title>Please Wait A Second</title>
</head>
<body>
<%
    UserDao userDAO = new UserDao();
    userDAO.coursePass(request.getParameter("param"));
%>
<%--关闭当前窗口--%>
<script>
    var index = parent.layer.getFrameIndex(window.name);
    parent.layer.close(index);
</script>
</body>
</html>
