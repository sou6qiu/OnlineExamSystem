<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>题库维护</title>
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
        <a href="1question_bank.jsp"><cite>题库维护</cite></a>
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
            <th>开课学期</th>
            <th>课程名称</th>
            <th>类型</th>
            <th>任课教师</th>

        </tr>
        </thead>
        <tbody>
        <tr  onclick="window.location.href='2question_bank_class.jsp'"><%--从数据库获取课程名后，将值传给下一页面--%>
            <td>1</td>
            <td>2018年春季学期</td>
            <td>Web技术及应用开发实践</td>
            <td>专选</td>
            <td>李浩</td>
        </tr>
        </tbody>
    </table>
</div>
</body>
</html>
