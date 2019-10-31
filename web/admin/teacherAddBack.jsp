<%--
  Created by IntelliJ IDEA.
  User: 史聿成
  Date: 2019/1/1
  Time: 12:45
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
    UserDao userdao = new UserDao();
    String teaname=request.getParameter("teaname");
    String teagender=request.getParameter("teagender");
    String teacollege=request.getParameter("teacollege");
    String teamajor=request.getParameter("teamajor");
    String teamail=request.getParameter("teamail");
    String teatitle=request.getParameter("teatitle");
    userdao.teacherAdd(teaname,teagender,teacollege,teamail,teamajor,teatitle);

%>
<%--关闭当前窗口--%>
<script>
    var index = parent.layer.getFrameIndex(window.name);
    parent.layer.close(index);
</script>
</body>
</html>
