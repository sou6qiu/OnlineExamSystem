<%@ page import="com.DAO.UserDao" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.net.URLEncoder" %><%--
  Created by IntelliJ IDEA.
  User: ZCH
  Date: 2019/1/1
  Time: 14:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Please wait a second</title>
</head>
<body>
<h2>Please wait a second</h2>
<%
    String stdid = request.getParameter("stdid");
    String cid = request.getParameter("cid");
    int mark = Integer.valueOf(request.getParameter("objm"));
    int grade = mark;
    int fibn = Integer.valueOf(request.getParameter("fibnum"));
    int saqn = Integer.valueOf(request.getParameter("saqnum"));
    for (int i=1;i<=fibn;i++){
        grade+=Integer.valueOf(request.getParameter("ta"+i));
    }
    for (int i=1;i<=saqn;i++){
        grade+=Integer.valueOf(request.getParameter("saqm"+i));
    }
    UserDao userDao = new UserDao();
    userDao.markConfirm(cid,stdid,grade);
    ResultSet rs = userDao.getCourseById(cid);
    String cname = null;
    while (rs != null && rs.next()) {
        cname = rs.getString("cname");
    }
    cname = URLEncoder.encode(cname);
    userDao.passChange(cid,stdid,"marked");
    response.setStatus(response.SC_MOVED_TEMPORARILY);
    response.setHeader("Location", "paper_review1.jsp?cname='"+cname+"'&cid='"+cid+"'");
%>
</body>
</html>

