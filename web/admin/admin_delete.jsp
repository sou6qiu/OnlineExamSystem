<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <title></title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="stylesheet" href="../css/font.css">
    <link rel="stylesheet" href="../css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="../lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="../js/xadmin.js"></script>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<%--<%--%>
    <%--if(session.getAttribute("username")==null|| !session.getAttribute("role").equals("admin")){--%>
        <%--response.sendRedirect("../login.jsp");--%>
    <%--}--%>
<%--%>--%>
<div class="x-body">
    <form class="layui-form" action="delete_user.jsp" method="post">


        <div><label class="note">是否确认删除用户：xxx
            <%--<%=request.getParameter("param")%> --%>
            ？</label>
            <%--<input name="username" type="hidden" value="<%=request.getParameter("param")%>"/>--%>
        </div>


        <div class="layui-form-item"style="margin-top: 10px">

            <button  class="layui-btn" lay-filter="add"  type="submit">
                确认删除
            </button>
        </div>
    </form>
</div>
</body>

</html>
