    <%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2018/11/26
  Time: 20:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ page import="com.DAO.UserDao,java.sql.ResultSet" %>
    <%@ page import="com.DAO.UserDao" %>
    <html>
<head>
    <meta charset="UTF-8">
    <title>添加课程</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
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
    ResultSet rs = userdao.availableCourse(session.getAttribute("username").toString(),"not");
%>
<div class="x-nav">

    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
</div>
<div class="x-body">
    <xblock>
        <button class="layui-btn" onclick="x_admin_show('添加课程','course_search.jsp')"><i class="layui-icon"></i>
            添加课程</button>
        <form action="" method="get">
        <span class="x-right" style="line-height:40px">
        </span>
        </form>
    </xblock>
    <table class="layui-table">
        <thead>
        <tr>
            <th>课程编号</th>
            <th>课程名称</th>
            <th>任课老师</th>
            <th>上课时间</th>
            <th>学分</th>
            <th>课程学时</th>
            <th>考试时间</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <%--<c:forEach var="row" items="${result.rows}">--%>
        <%while (rs != null && rs.next()) {%>
        <tr>
            <td><%=rs.getString("cid")%></td>
            <td><%=rs.getString("cname")%></td>
            <td><%=rs.getString("teaid")%></td>
            <td><%=rs.getString("ctime")%></td>
            <td><%=rs.getString("ccredit")%></td>
            <td><%=rs.getString("cperiod")%></td>
            <td><%=rs.getString("ctest")%></td>
            <td class="td-manage">
            <button class="layui-btn layui-btn layui-btn-xs" onclick="x_admin_show('添加课程','choose.jsp?param=<%=rs.getString("cid")%>');">
                <i class="layui-icon">&#xe642;</i>添加课程
            </button>
            </td>
        </tr>
        <%
            }
        %>


        <%--</c:forEach>--%>
        </tbody>
    </table>
    <div class="page">
        <div>
            <a class="prev" href="">&lt;&lt;</a>
            <span class="current">1</span>
            <a class="num" href="">2</a>
            <a class="num" href="">..</a>
            <a class="next" href="">&gt;&gt;</a>
        </div>
    </div>

</div>
<script>
    layui.use(['form'], function () {
        form = layui.form;

    });


    /*用户-删除*/
    function member_del(obj, id) {
        layer.confirm('确认要删除吗？', function (index) {
            //发异步删除数据
            $(obj).parents("tr").remove();
            layer.msg('已删除!', {icon: 1, time: 1000});
        });
    }


    function delAll(argument) {

        var data = tableCheck.getData();

        layer.confirm('确认要删除吗？' + data, function (index) {
            //捉到所有被选中的，发异步进行删除
            layer.msg('删除成功', {icon: 1});
            $(".layui-form-checked").not('.header').parents('tr').remove();
        });
    }
</script>
<script>var _hmt = _hmt || [];
(function () {
    var hm = document.createElement("script");
    hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
    var s = document.getElementsByTagName("script")[0];
    s.parentNode.insertBefore(hm, s);
})();</script>

</body>
</html>
