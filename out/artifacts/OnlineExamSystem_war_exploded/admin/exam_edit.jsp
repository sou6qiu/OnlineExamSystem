<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ page import="com.XMLUtil.ReadXml" %>--%>
<%--<%@ page import="com.entity.News" %>--%>
<%--<%@ page import="java.util.ArrayList" %>--%>

<html>
<head>
    <meta charset="UTF-8">
    <title>新闻审核</title>
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
            <th>开课学期</th>
            <th>考试科目</th>
            <th>任课教师</th>
            <th>限制时间</th>
        </tr>
        </thead>

        <tbody>
        <tr>
            <td>1</td>
            <td>2018年春季学期</td>
            <td>网络安全</td>
            <td>路人甲</td>
            <td>120分钟</td>
        </tr>
        <tr>
            <td>2</td>
            <td>2018年春季学期</td>
            <td>网络软件开发</td>
            <td>路人乙</td>
            <td>100分钟</td>
        </tr>

        <%--<%--%>
            <%--ReadXml readXml = new ReadXml();--%>
            <%--String file = "E:/xml/plates/rejected.xml";--%>

            <%--ArrayList<News> newsArrayList = readXml.getElement(file);--%>
            <%--if (newsArrayList != null && newsArrayList.size() > 0) {--%>
                <%--for (int i = 0, j=1; i < newsArrayList.size(); i++) {--%>
                    <%--News news = newsArrayList.get(i);--%>
                    <%--if(news.getAuthor().equals(session.getAttribute("truename"))){--%>
        <%--%>--%>
        <%--<tr onclick="window.location.href='news_view.jsp?param=<%=i%>'">--%>
            <%--<td><%=j%>--%>
            <%--</td>--%>
            <%--<td><%=news.getTitle()%>--%>
            <%--</td>--%>
            <%--<td><%=news.getAuthor()%>--%>
            <%--</td>--%>
            <%--<td><%=news.getEditor()%>--%>
            <%--</td>--%>
            <%--<td><%=news.getDate()%>--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--<%--%>
                        <%--j++;--%>
                    <%--}--%>
                <%--}--%>
            <%--}--%>
        <%--%>--%>
        </tbody>
    </table>
</div>
</body>
</html>
