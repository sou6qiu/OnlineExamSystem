<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.DAO.UserDao,java.sql.ResultSet" %>
<%@ page import="com.DAO.UserDao" %>
<%--<%@ page import="com.XMLUtil.ReadXml" %>--%>
<%--<%@ page import="com.entity.News" %>--%>
<%--<%@ page import="java.util.ArrayList" %>--%>

<html>
<head>
    <meta charset="UTF-8">
    <title>课程审核</title>
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
    ResultSet rs = userdao.getCourse("unreviewed");
    ResultSet rsdelete = userdao.getCourse("delete");
%>
<div class="x-nav">
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"
       href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
</div>
<div class="x-body">
    <xblock>
        <button class="layui-btn">申请开课</button>
    </xblock>
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
            <th>操作</th>
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
            <td class="td-manage">
                <button class="layui-btn layui-btn layui-btn-xs" onclick="x_admin_show('允许开课','passOperation.jsp?param=<%=rs.getString("cid")%>');">
                    <i class="layui-icon">&#xe642;</i>允许开课
                </button>
            </td>
        </tr>
        <%
            }
        %>
        </tbody>
    </table>
    <%--申请取消课程--%>
    <xblock>
        <button class="layui-btn">申请取消</button>
    </xblock>
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
            <th>操作</th>
        </tr>
        </thead>
        <tbody>

        <%while (rsdelete != null && rsdelete.next()) {%>
        <tr >
            <td><%=rsdelete.getString("cid")%></td>
            <td><%=rsdelete.getString("cname")%></td>
            <td><%=rsdelete.getString("teaid")%></td>
            <td><%=rsdelete.getString("ctime")%></td>
            <td><%=rsdelete.getString("ccredit")%></td>
            <td><%=rsdelete.getString("cperiod")%></td>
            <td><%=rsdelete.getString("ctest")%></td>
            <td class="td-manage">
                <button class="layui-btn layui-btn layui-btn-xs" onclick="x_admin_show('允许取消','deleteOperation.jsp?paramde=<%=rsdelete.getString("cid")%>');">
                    <i class="layui-icon">&#xe642;</i>允许取消
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
