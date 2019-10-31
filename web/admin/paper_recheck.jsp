<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.DAO.UserDao,java.sql.ResultSet" %>
<html>
<head>
    <title>组卷发布</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
    <link rel="stylesheet" href="../css/font.css">
    <link rel="stylesheet" href="../css/xadmin.css">
    <link rel="stylesheet" href="../css/news_compile.css">
    <link rel="stylesheet" href="../css/news_compile1.css">
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
    ResultSet rs = userdao.getExamSet();
%>
<div class="x-nav">
      <span class="layui-breadcrumb">
        <a href="welcome.jsp">首页</a>
        <a ><cite>试卷审核</cite></a>
      </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"
       href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
</div>
<div class="x-body">
    <xblock>
        <button class="layui-btn">试卷配置</button>
    </xblock>
    <table class="layui-table layui-form">
        <thead>
        <tr>
            <th>试卷编号</th>
            <th>试卷名称</th>
            <th>难度比例（难/中/易）</th>
            <th>单选题分值</th>
            <th>多选题分值</th>
            <th>填空题分值</th>
            <th>判断题分值</th>
            <th>简答题分值</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <%--<c:forEach var="row" items="${result.rows}">--%>
        <%while (rs != null && rs.next()) {%>
        <tr>
            <td><%=rs.getString("eid")%></td>
            <td><%=rs.getString("ename")%></td>
            <td><%=rs.getString("easy")%>%/&nbsp;<%=rs.getString("medium")%>%/&nbsp;<%=rs.getString("hard")%>%</td>
            <td><%=rs.getString("singlemark")%></td>
            <td><%=rs.getString("multimark")%></td>
            <td><%=rs.getString("fillmark")%></td>
            <td><%=rs.getString("torfmark")%></td>
            <td><%=rs.getString("shortmark")%></td>
            <td class="td-manage">
                <button class="layui-btn layui-btn layui-btn-xs" onclick="x_admin_show('通过','examPass.jsp?param=<%=rs.getString("ename")%>&param2=<%=rs.getString("eid")%>');">
                    <i class="layui-icon">&#xe642;</i>通过
                </button>
                <button class="layui-btn layui-btn layui-btn-xs" onclick="x_admin_show('驳回','examFail.jsp?param=<%=rs.getString("ename")%>&param2=<%=rs.getString("eid")%>');">
                    <i class="layui-icon">&#xe642;</i>驳回
                </button>
            </td>
        </tr>
        <%
            }
        %>
        </tbody>
    </table>


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
