<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改问题</title>
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
<div class="x-body" style="margin: 0 auto">
    <form class="layui-form">
        <div class="layui-form-item">
            <label class="layui-form-label">
                <span class="x-red">*</span>问题
            </label>
            <div class="layui-input-inline" style="width: 100%; padding-top: 2%;">
                <textarea style="width: 95%; height: 20%; float: right;">在Windows XP中快捷键Ctrl + Esc的功能是</textarea>
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">
                <span class="x-red">*</span>答案
            </label>
            <div class="layui-input-block">
                <input type="radio" name="like1[write]" lay-skin="primary" title="A. 在打开的项目之间切换" checked=""><br/>
                <input type="radio" name="like1[write]" lay-skin="primary" title="B. 显示“开始”菜单"><br/>
                <input type="radio" name="like1[write]" lay-skin="primary" title="C. 查看所选项目的属性"><br/>
                <input type="radio" name="like1[write]" lay-skin="primary" title="D. 以项目打开的顺序循环切换">
            </div>
        </div>
        <div class="layui-form-item" style="position: relative; left: 70%;">
            <button class="layui-btn">
                确定
            </button>
            <button class="layui-btn layui-btn-danger">
                取消
            </button>
        </div>
    </form>
</div>
</body>

</html>
