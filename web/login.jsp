<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>后台登录</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>

    <link rel="stylesheet" href="css/font.css">
    <link rel="stylesheet" href="css/xadmin.css">
    <link href="css/jquery.idealforms.min.css" rel="stylesheet" media="screen"/>
    <script src="lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="js/xadmin.js"></script>

</head>
<%
    if (session.getAttribute("username") != null) {
        session.setAttribute("username", null);
        session.setAttribute("password", null);
        session.setAttribute("gender", null);
        session.setAttribute("nation", null);
        session.setAttribute("phone", null);
        session.setAttribute("email", null);
        session.setAttribute("postcode", null);
        session.setAttribute("page", null);
        session.setAttribute("birthday", null);
        session.setAttribute("truename", null);
    }
%>
<body class="login-bg">

<div class="login layui-anim layui-anim-up">
    <div class="message">用户登录</div>
    <div id="darkbannerwrap"></div>

    <form method="post" class="layui-form" action="login_back.jsp">
        <input name="username" placeholder="用户名" type="text" class="layui-input">
        <hr class="hr15">
        <input name="password" placeholder="密码" type="password" class="layui-input">
        <hr class="hr15">

        <hr class="hr15">

        <hr class="hr15">
        <input value="登录" style="width:49%;" type="submit">
        <input value="重置" style="width:49%; background-color: #FF5722" type="button"
               onclick="location.href='register.jsp'">

        <hr class="hr20">
    </form>
</div>


<script type="text/javascript">
    function reload() {
        document.getElementById("image").src = "<%=request.getContextPath() %>/imageServlet?date=" + new Date().getTime();
        $("#checkcode").val("");   // 将验证码清空
    }


</script>
</body>
</html>
