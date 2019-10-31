<%@ page import="com.DAO.UserDao" %>
<%@ page import="java.math.BigDecimal" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.InputStream" %>
<%@ page import="java.io.Reader" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.net.URL" %><%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2018/11/27
  Time: 0:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>成绩管理</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="../css/font.css">
    <link rel="stylesheet" href="../css/xadmin.css">
</head>
<body>
<fieldset class="layui-elem-field">
    <legend>查看成绩</legend>
    <div class="layui-field-box">
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-body">
                    <div class="layui-carousel x-admin-carousel x-admin-backlog" lay-anim="" lay-indicator="inside"
                         lay-arrow="none" style="width: 100%; height: 100%;">
                        <div class="x-nav">
                            <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" href="javascript:location.replace(location.href);" title="刷新">
                                <i class="layui-icon" style="line-height:30px">ဂ</i></a>
                        </div>
                        <div carousel-item="">

                            <ul class="layui-col layui-col-space10 layui-this">

                                <li>
                                    <div>
                                        <form action="" method="get">
                                            <span class="x-left" style="line-height:40px">
                                                <input type="text" id="courseinfo" name="bywhat" value="输入检索信息" style="height: 30px;">
                                                <input type="submit" value="查询" /><% %>
                                            </span>
                                        </form>
                                    </div>
                                    <table class="layui-table" onclick="javascrtpt:window.location.href='.jsp'">
                                        <thead>
                                        <tr>
                                            <th>开课学期</th>
                                            <th>课程名称</th>
                                            <th>任课老师</th>
                                            <th>考试日期</th>
                                            <th>学分</th>
                                            <th>分数</th>
                                        </tr></thead>
                                        <tbody>
                                        <%
                                            UserDao userDao = new UserDao();
                                            ResultSet rs = userDao.StudentMark(session.getAttribute("username").toString());

                                        %>
                                        <tr>
                                            <td>2016年春季学期</td>
                                            <td>C语言程序设计</td>
                                            <td>宋斌</td>
                                            <td>2017.01.10</td>
                                            <td>2学分</td>
                                            <td>90</td>
                                        </tr>
                                        <tr>
                                            <td>2016年春季学期</td>
                                            <td>大学生创新创业</td>
                                            <td>杨老师</td>
                                            <td>2017.01.15</td>
                                            <td>2学分</td>
                                            <td>87</td>
                                        </tr>
                                        <tr>
                                            <td>2017年秋季学期</td>
                                            <td>大学物理</td>
                                            <td>许红星</td>
                                            <td>2017.07.02</td>
                                            <td>4学分</td>
                                            <td>89</td>
                                        </tr>

                                        </tbody>
                                    </table>
                                </li>


                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</fieldset>
</body>
</html>
