<%--
  Created by IntelliJ IDEA.
  User: 史聿成
  Date: 2018/12/31
  Time: 17:15
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
    UserDao userdao = new UserDao();
    String ename =request.getParameter("param");
    String eid =request.getParameter("param2");
    userdao.paperPass("cname",ename,"nope");
    userdao.estateChange(eid);
%>
<%--关闭当前窗口--%>
<script>
    var index = parent.layer.getFrameIndex(window.name);
    parent.layer.close(index);
</script>
</body>
</html>
