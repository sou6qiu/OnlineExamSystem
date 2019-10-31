<%@ page import="com.DAO.UserDao" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>试卷批阅</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
    <link rel="stylesheet" href="../css/font.css">
    <link rel="stylesheet" href="../css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="../lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="../js/xadmin.js"></script>
</head>
<body>
<div class="x-nav">
    <span class="layui-breadcrumb">
        <a href="welcome.jsp">首页</a>
        <a href="grade_manage.jsp"><cite>试卷批阅</cite></a>
      </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"
       href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
</div>
<div class="x-body">
    <table class="layui-table">
        <thead>
        <tr>
            <th>ID</th>
            <th>课程名称</th>
            <th>任课教师</th>
            <th>考试状态</th>
        </tr>
        </thead>
        <tbody>
        <%
            UserDao ud = new UserDao();
            ResultSet rs = ud.paperCheck_class(session.getAttribute("username").toString());
            while (rs != null && rs.next()) {
                String cname = URLEncoder.encode(rs.getString("cname"), "utf-8");

        %>
        <tr onclick="window.location.href='paper_review1.jsp?cname=<%=cname%>&cid=<%=rs.getString("cid")%>'">
            <td><%=rs.getString("cid")%></td>
            <td><%=rs.getString("cname")%></td>
            <td><%=session.getAttribute("realname")%></td>
            <td>已开始</td>
        </tr>
        <%}%>
        </tbody>
    </table>
</div>
</body>
</html>
