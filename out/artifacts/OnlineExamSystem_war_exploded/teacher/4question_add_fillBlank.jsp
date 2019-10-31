<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>填空</title>
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
    <form class="layui-form" method="post" action="5do_question_add_otherQuestion.jsp">

        <input name="file" value="/Users/songbin/Develop/IdeaProjects/OnlineExamSystem/xml/teacher/宋斌/questionBank/基于Java的XML及其相关技术/填空.xml" type="hidden">
        <input name="type" value="fillBlank" type="hidden">

        <div class="layui-form-item layui-form-text">
            <label class="layui-form-label">
                <span class="x-red">*</span>问题
            </label>
            <div class="layui-input-block">
                <textarea name="question" placeholder="请输入问题" class="layui-textarea"></textarea>
            </div>
        </div>


        <div class="layui-form-item">
            <label class="layui-form-label"><span class="x-red">*</span>正确答案</label>
            <div class="layui-input-block">
                <textarea name="trueAnswer" placeholder="请输入答案" class="layui-textarea"></textarea>
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label"><span class="x-red">*</span>难度</label>
            <div class="layui-input-block">
                <input type="radio" name="difficult" value="易" title="易">
                <input type="radio" name="difficult" value="中" title="中">
                <input type="radio" name="difficult" value="难" title="难">
            </div>
        </div>
        <div class="layui-form-item" style="position: relative; left: 80%;">
            <input class="layui-btn" type="submit" value="确定">
            <input class="layui-btn layui-btn-danger" type="button" value="取消" onclick="x_admin_close()">
        </div>
    </form>
</div>
</body>

</html>
