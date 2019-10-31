<%--
  Created by IntelliJ IDEA.
  User: 史聿成
  Date: 2018/12/17
  Time: 23:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.DAO.UserDao,java.sql.ResultSet" %>
<html>
<head>
    <title>Please Wait A Second</title>
</head>
<body>
<%
    UserDao userDAO = new UserDao();
    userDAO.delete_request(request.getParameter("param"));
%>

</body>
</html>
