<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page import="com.DAO.UserDao,java.sql.ResultSet" %>

<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>--%>
<html>
<head>
    <meta charset="UTF-8">
    <title>用户管理</title>
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

<%
    /*if(session.getAttribute("username")==null|| !session.getAttribute("role").equals("2")){
        response.sendRedirect("../login.jsp");
    }*/
    UserDao userdao = new UserDao();
    ResultSet rs = userdao.getSelect("student");
%>
<div class="x-nav">
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"
       href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
</div>
<xblock>
    <button class="layui-btn" onclick="x_admin_show('添加用户','student_add.jsp')"><i class="layui-icon"></i>添加</button>

</xblock>
<form class="layui-form layui-col-md12 x-so">
</form>
<div class="x-body">
    <table class="layui-table">
        <thead>
        <tr>
            <th>学号</th>
            <th>姓名</th>
            <th>年级</th>
            <th>学院</th>
            <th>性别</th>
            <th>专业</th>
            <th>操作</th>
        </thead>
        <tbody>

        <%while (rs != null && rs.next()) {%>
        <tr>
            <td><%=rs.getString("stdid")%></td>
            <td><%=rs.getString("stdname")%></td>
            <td><%=rs.getString("stdgrade")%></td>
            <td><%=rs.getString("stdcollege")%></td>
            <td><%=rs.getString("stdgender")%></td>
            <td><%=rs.getString("stdmajor")%></td>
            <td class="td-manage">
                <button class="layui-btn layui-btn layui-btn-xs" onclick="x_admin_show('删除账号','deleteStudent.jsp?param=<%=rs.getString("stdid")%>');">
                    <i class="layui-icon">&#xe642;</i>删除账号
                </button>
            </td>
        </tr>
        <%
            }
        %>
        </tbody>
    </table>
</div>
</body>

</html>
