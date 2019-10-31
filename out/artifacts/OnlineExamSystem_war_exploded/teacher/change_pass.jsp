<%--
  Created by IntelliJ IDEA.
  User: 史聿成
  Date: 2018/12/11
  Time: 23:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page import="com.DAO.UserDao,com.DAO.entity.user,java.nio.charset.StandardCharsets" %>
<%@ page import="com.DAO.UserDao" %>
<html>
<head>
    <title>Please wait a second</title>
</head>
<body>
<%
    String password = request.getParameter("newpassword");
    String oldname=session.getAttribute("username").toString();
    UserDao userDAO = new UserDao();
    userDAO.update(oldname,password,"teacher","tea");
%>
<script type="text/javascript">
    alert("密码修改成功！");
</script>
<%
    response.setStatus(response.SC_MOVED_TEMPORARILY);
    response.setHeader("Location", "user_info.jsp");
%>
</body>
</html>
