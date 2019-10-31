<%@ page import="com.XML.DeleteQuestion" %>
<%@ page import="java.nio.charset.StandardCharsets" %>
<%@ page import="java.net.URLDecoder" %>
<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
    <link rel="stylesheet" href="../css/font.css">
    <link rel="stylesheet" href="../css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="../lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="../js/xadmin.js"></script>
    <title>Please wait a second</title>
</head>
<body>
<%--<%--%>
<%--if(session.getAttribute("username")==null|| !session.getAttribute("role").equals("admin")){--%>
<%--response.sendRedirect("../login.jsp");--%>
<%--}--%>
<%--%>--%>
<%
    String question = new String(request.getParameter("question").getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
    System.out.println(question);
    String file = new String(request.getParameter("file").getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
    System.out.println(file);
    DeleteQuestion deleteQuestion = new DeleteQuestion();
    deleteQuestion.doDelete(file, question);
%>
<%--关闭当前窗口--%>
<script>
    var index = parent.layer.getFrameIndex(window.name);
    parent.layer.close(index);
</script>

</body>
</html>