<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>后台管理</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
    <meta content="no-siteapp"/>
    <link rel="stylesheet" href="../css/font.css">
    <link rel="stylesheet" href="../css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="../lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="../js/xadmin.js"></script>
</head>
<body>
<div class="x-body layui-anim layui-anim-up">
    <blockquote class="layui-elem-quote">欢迎老师：
        <span class="x-red"><%=session.getAttribute("realname")%></span>！今天是:<%=new java.sql.Timestamp(System.currentTimeMillis()).toString()%>
    </blockquote>
    <fieldset class="layui-elem-field">
        <legend>个人信息</legend>
        <div class="layui-field-box">
            <div class="layui-col-md12">
                <div class="layui-card">
                    <div class="layui-card-body">
                        <div class="layui-carousel x-admin-carousel x-admin-backlog" lay-anim="" lay-indicator="inside"
                             lay-arrow="none" style="width: 100%; height: 100px;">
                            <div carousel-item="">
                                <ul class="layui-row layui-col-space15 layui-this">
                                    <span style="float: left;"><img src="../images/wuyanzu.jpg"
                                                                    style="width: 90px;height: 120px;"/></span>
                                    <li class="layui-col-xs8">
                                        <a href="javascript:" class="x-admin-backlog-body">
                                            <p><b>姓名：</b><%=session.getAttribute("realname")%></p>
                                            <p><b>学院：</b><%=session.getAttribute("major")%></p>
                                            <p><b>专业：</b><%=session.getAttribute("college")%></p>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </fieldset>
</div>
</body>
</html>