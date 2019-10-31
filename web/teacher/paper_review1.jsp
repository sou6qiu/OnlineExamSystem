<%@ page import="com.DAO.UserDao" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.net.URLDecoder" %>
<%@ page import="com.DAO.UserDao" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查看成绩</title>
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
    String cname = URLDecoder.decode(request.getParameter("cname"), "utf-8");
    String cid = request.getParameter("cid");
    UserDao ud = new UserDao();
    ResultSet rs = ud.paperCheck_Student("finished",cid);


%>
<div class="x-nav">
      <span class="layui-breadcrumb">
        <a href="welcome.jsp">首页</a>
        <a href="grade_manage.jsp">试卷批阅</a>
        <a href="grade_manage1.jsp"><cite><%=cname%></cite></a>
      </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"
       href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
</div>
<div class="x-body">

    <table class="layui-table layui-form">
        <thead>
        <tr>
            <th>学号</th>
            <th>姓名</th>
            <th>客观题分数</th>
            <th>操作</th>
        </thead>
        <tbody>
        <%
            while (rs != null && rs.next()) {
                String stdname=URLEncoder.encode(rs.getString("stdname"), "utf-8");
                if(rs.getString("pass").equals("finished")){
        %>
        <tr>
            <td>
                <%=rs.getString("stdid")%>
            </td>
            <td>
                <%=rs.getString("stdname")%>
            </td>
            <td>
                <%=rs.getString("objectivem")%>
            </td>
            <td class="td-manage">
                    <button class="layui-btn layui-btn layui-btn-xs"
                            onclick="window.location.href='paper_review2.jsp?stdname=<%=stdname%>&stdid=<%=rs.getString("stdid")%>&objm=<%=rs.getString("objectivem")%>&cid=<%=cid%>'">
                        <i class="layui-icon">&#xe642;</i>批阅
                    </button>
            </td>
        </tr>
        <%}}%>
        </tbody>
    </table>
</div>

</body>
</html>
