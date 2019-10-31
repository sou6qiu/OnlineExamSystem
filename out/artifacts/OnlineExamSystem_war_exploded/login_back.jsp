<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page import="com.DAO.UserDao,com.DAO.entity.user,java.nio.charset.StandardCharsets" %>
<%@ page import="com.DAO.UserDao" %>

<html>
<head>
    <title>Please wait a second</title>
</head>
<body>
<!--
JDBC 驱动名及数据库 URL
数据库的用户名与密码，需要根据自己的设置
useUnicode=true&characterEncoding=utf-8 防止中文乱码
 -->
<%
    String userID = new String((request.getParameter("username")).getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
    String password = request.getParameter("password");

    UserDao userDAO = new UserDao();
    boolean flag = userDAO.getUser(userID, password);
    user user = userDAO.userback();

    if (flag) {
        //初始化session
        session.setAttribute("username", user.getName());
        session.setAttribute("password", user.getPassword());
        session.setAttribute("realname",user.getRealname());
        session.setAttribute("major",user.getMajor());
        session.setAttribute("college",user.getCollege());
        session.setAttribute("role",user.getRole());

        //首先判断用户是否选择了记住登录状态
        switch (userDAO.role) {
            case 0:
                response.setStatus(response.SC_MOVED_TEMPORARILY);
                response.setHeader("Location", "student/index.jsp");
                break;
            case 1:
                response.setStatus(response.SC_MOVED_TEMPORARILY);
                response.setHeader("Location", "teacher/index.jsp");
                break;
            case 2:
                response.setStatus(response.SC_MOVED_TEMPORARILY);
                response.setHeader("Location", "admin/index.jsp");
                break;
        }

        // 重定向到新地址

    } else {
        System.out.println("登陆失败");
        response.setStatus(response.SC_MOVED_TEMPORARILY);
        response.setHeader("Location", "login.jsp");
    }


%>

</body>
</html>
