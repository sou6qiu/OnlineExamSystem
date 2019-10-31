<%--
  Created by IntelliJ IDEA.
  User: 史聿成
  Date: 2018/12/18
  Time: 15:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.DAO.UserDao,com.DAO.entity.user,java.nio.charset.StandardCharsets" %>
<html>
<head>
    <title>Please Wait A Second</title>
</head>
<body>
<%
    UserDao userDAO = new UserDao();
    userDAO.courseDelete(request.getParameter("paramde"));
%>
</body>
</html>
