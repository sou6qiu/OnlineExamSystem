<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>删除题目</title>
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
<div class="x-body">
    <form class="layui-form" action="5do_question_delete.jsp" method="post">

        <%
            String param = request.getParameter("param");
            System.out.println(param);
            String file = request.getParameter("file");
            System.out.println(file);
        %>
        <div style="text-align: center;"><label class="note"><h1>是否确认删除题目？</h1><br></label>
            <input name="question" type="hidden" value="<%=param%>"/>
            <input name="file" type="hidden" value="<%=file%>">
        </div>


        <div class="layui-form-item"style="margin-top: 10px">

            <button style="position:relative;top: 50%; left: 66%;" class="layui-btn" lay-filter="add"  type="submit">
                确认删除
            </button>
        </div>
    </form>
</div>
</body>
</html>
