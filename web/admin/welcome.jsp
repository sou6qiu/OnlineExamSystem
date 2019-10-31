<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>后台管理</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="../css/font.css">
    <link rel="stylesheet" href="../css/xadmin.css">
</head>
<body>
<%--<%--%>
    <%--if(session.getAttribute("username")==null|| !session.getAttribute("role").equals("ceditor")){--%>
        <%--response.sendRedirect("../login.jsp");--%>
    <%--}--%>
<%--%>--%>
<%--<%--%>
    <%--ReadXml readXml = new ReadXml();--%>
    <%--String name;--%>
    <%--ArrayList<News> newsArrayList;--%>
<%--%>--%>
<div class="x-body layui-anim layui-anim-up">
    <blockquote class="layui-elem-quote">今天是：<span style="color: red;"><%=new java.sql.Timestamp(System.currentTimeMillis()).toString().substring(0, 10)%></span>

    </blockquote>
    <fieldset class="layui-elem-field">
        <legend>数据统计</legend>
        <div class="layui-field-box">
            <div class="layui-col-md12">
                <div class="layui-card">
                    <div class="layui-card-body">
                        <div class="layui-carousel x-admin-carousel x-admin-backlog" lay-anim="" lay-indicator="inside"
                             lay-arrow="none" style="width: 100%; height: 90px;">
                            <div carousel-item="">
                                <ul class="layui-row layui-col-space10 layui-this">

                                    <li class="layui-col-xs2">
                                        <a href="class_pass.jsp" class="x-admin-backlog-body">
                                            <h3>待通过课程</h3>
                                            <p>
                                                <cite>1
                                                    <%--<%--%>
                                                        <%--name = "E:/xml/ceditor/unreviewed.xml";--%>
                                                        <%--newsArrayList = readXml.getElement(name);--%>
                                                    <%--%>--%>
                                                    <%--<%=newsArrayList.size()%>--%>
                                                </cite>
                                            </p>
                                        </a>
                                    </li>
                                    <li class="layui-col-xs2">
                                        <a href="paper_recheck.jsp" class="x-admin-backlog-body">
                                            <h3>待审核考试</h3>
                                            <p>
                                                <cite>2
                                                    <%--<%--%>
                                                        <%--name = "E:/xml/plates/rejected.xml";--%>
                                                        <%--newsArrayList = readXml.getElement(name);--%>
                                                    <%--%>--%>
                                                    <%--<%=newsArrayList.size()%>--%>
                                                </cite>
                                            </p>
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
