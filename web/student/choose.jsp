<%--
  Created by IntelliJ IDEA.
  User: 史聿成
  Date: 2018/12/16
  Time: 17:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.DAO.UserDao,java.sql.ResultSet" %>
<%@ page import="com.DAO.UserDao" %>
<html>
<head>
    <title>Please Wait A Second</title>
</head>
<body>
<%
    /*if(session.getAttribute("username")==null|| !session.getAttribute("role").equals("2")){
        response.sendRedirect("../login.jsp");
    }*/
    UserDao userdao = new UserDao();
    userdao.choose(session.getAttribute("username").toString(),request.getParameter("param"));
%>
<h1>添加成功！</h1>
</body>
</html>
