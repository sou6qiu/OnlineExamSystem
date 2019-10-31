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
    String id=request.getParameter("param");
    userdao.deleteRole(id,"teacher","teaid");


%>
<%--关闭当前窗口--%>
<script>
    var index = parent.layer.getFrameIndex(window.name);
    parent.layer.close(index);
</script>
</body>
</html>

