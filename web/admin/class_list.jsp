<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.DAO.UserDao,java.sql.ResultSet" %>
<%@ page import="com.DAO.UserDao" %>
<%--<%@ page import="com.XMLUtil.ReadXml" %>--%>
<%--<%@ page import="com.entity.News" %>--%>
<%--<%@ page import="java.util.ArrayList" %>--%>

<html>
<head>
    <meta charset="UTF-8">
    <title>已通过课程</title>
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
<%--<%--%>
<%--if(session.getAttribute("username")==null|| !session.getAttribute("role").equals("reporter")){--%>
<%--response.sendRedirect("../login.jsp");--%>
<%--}--%>
<%--%>--%>
<%
    /*if(session.getAttribute("username")==null|| !session.getAttribute("role").equals("2")){
        response.sendRedirect("../login.jsp");
    }*/
    UserDao userdao = new UserDao();
    ResultSet rs = userdao.getCourse("pass");
%>
<div class="x-nav">
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
            <th>上课时间</th>
            <th>课程学分</th>
            <th>总学时</th>
            <th>考试时间</th>
        </tr>
        </thead>
        <tbody>

        <%while (rs != null && rs.next()) {%>
        <tr >
            <td><%=rs.getString("cid")%></td>
            <td><%=rs.getString("cname")%></td>
            <td><%=rs.getString("teaid")%></td>
            <td><%=rs.getString("ctime")%></td>
            <td><%=rs.getString("ccredit")%></td>
            <td><%=rs.getString("cperiod")%></td>
            <td><%=rs.getString("ctest")%></td>
        </tr>
        <%
            }
        %>
        </tbody>
    </table>
</div>
</body>
</html>