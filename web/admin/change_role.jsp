<%--<%@ page import="com.DAOUtil.userdao" %>--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>--%>

<html>
<head>
    <title>Please wait a second</title>
</head>
<body>
<%
    if(session.getAttribute("username")==null|| !session.getAttribute("role").equals("admin")){
        response.sendRedirect("../login.jsp");
    }
%>
<!--
JDBC 驱动名及数据库 URL
数据库的用户名与密码，需要根据自己的设置
useUnicode=true&characterEncoding=utf-8 防止中文乱码
 -->
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/news?useUnicode=true&characterEncoding=utf-8&serverTimezone=GMT%2B8"
                   user="root" password="asdf1234!@#$"/>
<%
    String role = request.getParameter("like1[write]");
    String username = request.getParameter("username");
    int r = 0;
    if (role.equals("chief")) r = 2;
    else {
        if (role.equals("editor")) r = 3;
        else
            r = 4;
    }
    userdao userdao = new userdao();
    userdao.chrole(username, r);
%>

<h5>修改成功！</h5>
<script>
    window.close()
</script>


</body>
</html>

